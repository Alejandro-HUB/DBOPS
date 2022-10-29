/******************************************************************************
* File			: DBSSideIcon.h
* Author		: Alex
* Copyright		: Alex
* Date			: November 4, 2021
* Abstract		: 
*****************************************************************************
* Desc			: Scramble Event
*****************************************************************************/

#pragma once

// core
#include "ceventhandler.h"
#include "NtlSLEvent.h"

// share
#include "NtlTimeQuest.h"

// presentation
#include "NtlPLGui.h"

// dbo
#include "Windowby3.h"
#include "SideIconGui.h"

class CDBSSideIconGui : public CSideIconBase, public RWS::CEventHandler
{
public:
	CDBSSideIconGui(const RwChar* pName);
	virtual ~CDBSSideIconGui();

	RwBool		Create();
	VOID		Destroy();

	virtual VOID	OnSideViewClosed();
	virtual VOID	OnIconButtonClicked(gui::CComponent* pComponent);

protected:
	virtual VOID	HandleEvents( RWS::CMsg &msg );

	VOID				SetIconImageType(eDBSSideIconType eType);
	eDBSSideIconType	GetIconImageType();			

protected:			
	gui::CSlot			m_slotDBSSideIconButton;

	gui::CButton*		m_pBtnDBSSideIcon;			

	eDBSSideIconType	m_eIconImageType;		
	RwBool				m_bDBSComplete;			
};


class CDBSSideViewGui : public CSideViewBase, RWS::CEventHandler
{
public:
	CDBSSideViewGui(const RwChar* pName);
	virtual ~CDBSSideViewGui();

	RwBool		Create();
	VOID		Destroy();

	virtual VOID	OnPressESC();
	virtual VOID	OnSideViewOpen(const void* pData);
	virtual VOID	OnSideViewClose();
	virtual VOID	OnSideViewLocate(const CRectangle& rectSideIcon);	

protected:
	virtual VOID	HandleEvents( RWS::CMsg &msg );

	VOID			SetState(eDBSSideIconType eState);
	VOID			SetNumber(RwInt32 iNumber);
	VOID			LocateComponent();

	VOID			OnExitClicked(gui::CComponent* pComponent);	
	VOID			OnMove(RwInt32 iOldX, RwInt32 iOldY);
	VOID			OnResize( RwInt32 iOldW, RwInt32 iOldH );
	VOID			OnPaint();

protected:		
	gui::CSlot			m_slotCloseButton;	
	gui::CSlot			m_slotPaint;
	gui::CSlot			m_slotMove;
	gui::CSlot			m_slotResize;

	CWindowby3			m_BackPanel;		

	gui::CStaticBox*	m_pNotify;			
	gui::CStaticBox*	m_pTitle;			
	gui::CButton*		m_pExitButton;			
};