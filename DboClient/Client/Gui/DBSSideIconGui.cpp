#include "precomp_dboclient.h"
#include "DBSSideIconGui.h"

// core
#include "NtlDebug.h"

// presentation
#include "NtlPLGuiManager.h"

// simulation
#include "NtlSLEvent.h"
#include "NtlSLGlobal.h"
#include "NtlSlApi.h"
#include "TableContainer.h"
#include "DragonBallTable.h"

// Sound
#include "GUISoundDefine.h"

// dbo
#include "DboEvent.h"
#include "DboGlobal.h"
#include "DisplayStringManager.h"
#include "NtlWorldConceptScramble.h"
#include "DBOLogic.h"

//////////////////////////////////////////////////////////////////////////
// DBSSideIconGui
//////////////////////////////////////////////////////////////////////////

CDBSSideIconGui::CDBSSideIconGui(const RwChar* pName)
:CSideIconBase(pName)
,m_eIconImageType(E_ICON_NO_SEASON)
{
	m_bDBSComplete = FALSE;
}

CDBSSideIconGui::~CDBSSideIconGui()
{

}

RwBool CDBSSideIconGui::Create()
{
	NTL_FUNCTION( "CDBSSideIconGui::Create" );

	if(!CNtlPLGui::Create("Game.rsr", "gui\\DBSSideIcon.srf", "gui\\DBSSideIcon.frm"))
		NTL_RETURN(FALSE);

	CNtlPLGui::CreateComponents(CNtlPLGuiManager::GetInstance()->GetGuiManager());

	m_pThis = (gui::CDialog*)GetComponent("dlgMain");

	// Scramble event side icon
	m_pBtnDBSSideIcon = (gui::CButton*)GetComponent("btnDBSSideIcon");
	m_slotDBSSideIconButton = m_pBtnDBSSideIcon->SigClicked().Connect(this, &CDBSSideIconGui::OnIconButtonClicked);

	ResetSheduleInfo();

	NTL_RETURN(TRUE);
}

VOID CDBSSideIconGui::Destroy()
{
	NTL_FUNCTION("CDBSSideIconGui::Destroy");

	CNtlPLGui::DestroyComponents();
	CNtlPLGui::Destroy(); 

	NTL_RETURNVOID();
}

void CDBSSideIconGui::OnSideViewClosed()
{
}

void CDBSSideIconGui::OnIconButtonClicked(gui::CComponent* pComponent)
{
	CSideIconGui::GetInstance()->OpenSideView(this, SIDEVIEW_DBS, (VOID*)&m_eIconImageType);
}

VOID CDBSSideIconGui::SetIconImageType(eDBSSideIconType eType)
{
	m_eIconImageType = eType;

	m_pBtnDBSSideIcon->Show(false);

	switch(eType)
	{
	case E_ICON_DBS:	m_pBtnDBSSideIcon->Show(true); break;
	default:			NTL_ASSERTFAIL("CDBSSideIconGui::SetIconImageType, Wrong type : " << eType);
	}
}

eDBSSideIconType CDBSSideIconGui::GetIconImageType()
{
	return m_eIconImageType;
}



