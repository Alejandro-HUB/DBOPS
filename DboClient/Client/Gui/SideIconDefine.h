#pragma once

enum eSideIconType
{
	SIDEICON_HINT,						///< ��Ʈ ������
	SIDEICON_DBC,						///< �巡�ﺼ ���� ������
	SIDEICON_RB,						///< ��ũ��Ʋ ������
	SIDEICON_DOREPAIR,					///< �����䱸 ������
	SIDEICON_TUTORIAL,					///< Ʃ�丮�� ������
	SIDEICON_CAUTION,					///< ��� ������
	SIDEICON_BUDOKAI,					///< õ�����Ϲ���ȸ ������
	SIDEICON_PETITION,					///< Petition ������
	SIDEICON_GM,						///< GM ������
	SIDEICON_DOJO,						///< ���� ���̵� ������
    SIDEICON_NETPY,                     ///< NetPy ���̵� ������
	SIDEICON_HLS,
	SIDEICON_DBS,                  ///< This is the DBS EVENT

	SIDEICON_NUMS,
	INVALID_SIDEICON
};

enum eSideViewType
{
	SIDEVIEW_HINT_HELP,					///< ���� ��Ʈ ��
	SIDEVIEW_HINT_GUIDE,				///< ���̵� ��Ʈ ��
	SIDEVIEW_HINT_STRING,				///< ���ڿ� �˸� ��
	SIDEVIEW_DBC,						///< �巡�ﺼ ���� �˸� ��
	SIDEVIEW_RB,						///< ��ũ��Ʋ ��
	SIDEVIEW_DOREPAIR,					///< �����䱸 ��
	SIDEVIEW_TUTORIAL,					///< Ʃ�丮�� ��
	SIDEVIEW_CAUTION,					///< ��� ��
	SIDEVIEW_BUDOKAI,					///< õ�����Ϲ���ȸ ��
	SIDEVIEW_PETITION,					///< Petition ��
	SIDEVIEW_GM,						///< GM ��
	SIDEVIEW_DOJO,						///< ���� ��
    SIDEVIEW_NETPY,                     ///< NetPy ��
	SIDEVIEW_HLS,
	SIDEVIEW_DBS,					///< This is the DBS EVENT

	SIDEVIEW_NUMS,
	INVALID_SIDEVIEW
};

// �巡�ﺼ �÷����� ���̵� ������ ����
enum eDBCSideIconType
{
	E_ICON_NO_SEASON,					///< �巡�ﺼ ���� �Ⱓ�� �ƴҶ�
	E_ICON_SEASON,						///< �巡�ﺼ ���� �Ⱓ�϶�
	E_ICON_COLLECT,						///< �巡�ﺼ ������ �Ϸ� ������
};

enum eDBSSideIconType
{
	E_ICON_DBS,
};

enum eNetPySideViewType
{
    E_NETPY_INFO,                       ///< ���� NetPy ���� ǥ��
    E_NETPY_NOTIFY,                     ///< NetPy ȹ�� �˸� ǥ��
};


// ���̵� ������ �켱���� ////////////////////////////////////////////////////////////////////
// �켱 ������ �������� �����ʿ� ��µȴ�.
#define dSIDEICON_PRIORITY_DEFAULT		50
#define dSIDEICON_PRIORITY_CAUTION		25
#define dSIDEICON_PRIORITY_TUTORIAL		0