package com.rscja.deviceapi;

import java.io.FileDescriptor;

/* JADX INFO: loaded from: classes6.dex */
final class DeviceAPI {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static DeviceAPI f13634a;

    static {
        System.loadLibrary("DeviceAPI");
    }

    private DeviceAPI() {
    }

    public static synchronized DeviceAPI a() {
        if (f13634a == null) {
            f13634a = new DeviceAPI();
        }
        return f13634a;
    }

    public native int Auth_ActiveFile(byte b, byte[] bArr, byte[] bArr2, byte[] bArr3);

    public native int Auth_CertificationChain(byte b, byte b2, int i, byte[] bArr);

    public native byte[] Auth_RequestRandom();

    public native int Auth_SendData(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, int i, byte[] bArr6);

    public native byte[] Auth_UserInfo(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6, byte[] bArr7, byte[] bArr8, byte[] bArr9, byte[] bArr10, byte[] bArr11, byte[] bArr12);

    public native byte[] BDReceive();

    public native int BDSend(byte[] bArr, int i);

    public native int BDSerialportClose();

    public native int BDSerialportOpen(String str, int i);

    public native int BDSwitchSerialport();

    public native int Barcode_1D_Close(String str);

    public native int Barcode_1D_Open(String str, String str2, int i);

    public native byte[] Barcode_1D_Scan(String str);

    public native int Barcode_1D_StopScan(String str);

    public native int Barcode_2D_Close(String str);

    public native int Barcode_2D_Open(String str, String str2, int i);

    public native byte[] Barcode_2D_Scan(String str);

    public native int Barcode_2D_StopScan(String str);

    public native byte[] CardBalance();

    public native byte[] CardConsume(byte[] bArr, char[] cArr);

    public native byte[] CardConsume(byte[] bArr, char[] cArr, String str, int i);

    public native byte[] CardConsumeConfirm(byte[] bArr, char[] cArr, char[] cArr2);

    public native void CleanVar();

    public native int ConfigFDXTag(char[] cArr, char[] cArr2);

    public native byte[] Config_GetAccess();

    public native byte[] Config_GetPara(int i);

    public native byte[] Config_ReadRTC();

    public native int Config_SetPara(int i, byte b, byte[] bArr);

    public native int Config_SetRTC(byte[] bArr);

    public native int Config_SetWorkMode(byte b, byte[] bArr);

    public native char[] EM125K_GetEm4450UID();

    public native char[] EM125k_Read4305(int i);

    public native char[] EM125k_ReadHitag(int i);

    public native char[] EM125k_ReadHitag1();

    public native char[] EM125k_UID_REQ();

    public native int EM125k_Write4305(int i, char[] cArr);

    public native int EM125k_WriteHitagPage(int i, char[] cArr);

    public native int EM125k_free(String str);

    public native int EM125k_init(String str, String str2, int i);

    public native int EM125k_init_Ex(String str, String str2, int i);

    public native char[] EM125k_read(int i);

    public native char[] EM125k_read_Ex();

    public native int[] EMAutoEnroll(int i, int i2);

    public native int[] EMAutoMatch(int i, int i2, int i3);

    public native int EMDeletChar(int i, int i2);

    public native int EMDownChar(int i, char[] cArr);

    public native int EMEmpty();

    public native int EMFingerFree(String str);

    public native int EMFingerInit(String str, String str2, int i);

    public native int EMGenChar(int i);

    public native int EMGetImage();

    public native char[] EMGetRandomData();

    public native int EMLoadChar(int i, int i2);

    public native int[] EMMatch();

    public native int[] EMMatchEx();

    public native char[] EMReadChipSN();

    public native char[] EMReadSysPara();

    public native char[] EMReadSysParaMore();

    public native int EMRegModel();

    public native int[] EMSearch(int i, int i2, int i3);

    public native int EMSetDeviceName(char[] cArr);

    public native int EMSetManuFacture(char[] cArr);

    public native int EMSetPSW(char[] cArr);

    public native int EMSetReg(int i, int i2);

    public native int EMStorChar(int i, int i2);

    public native char[] EMUpChar(int i);

    public native int[] EMUpImage(int i, String str);

    public native int[] EMUpImageISO(int i, String str);

    public native int[] EMValidTempleteNum();

    public native int EMVfyPSW(char[] cArr);

    public native char[] EM_25kread();

    public native int EventReport();

    public native void GetAccState();

    public native char[] GetGen2();

    public native char[] GetQTPara();

    public native int GetStr(byte[] bArr);

    public native char[] GetTemperature();

    public native int HID_GetUid();

    public native char[] HardwareVersion_125k();

    public native char[] ISO14443A_BUS_CMD(char[] cArr, char[] cArr2, int i, int i2);

    public native int ISO14443A_authentication(int i, int i2, char[] cArr, int i3);

    public native char[] ISO14443A_cpu_command(char[] cArr, int i);

    public native char[] ISO14443A_cpu_rats();

    public native char[] ISO14443A_cpu_reset();

    public native int ISO14443A_decrement(int i, int i2, int i3);

    public native int ISO14443A_increment(int i, int i2, int i3);

    public native int ISO14443A_initval(int i, int i2);

    public native char[] ISO14443A_mifareone_alldata_read(int i, char[] cArr);

    public native char[] ISO14443A_read(int i);

    public native int[] ISO14443A_readval(int i);

    public native byte[] ISO14443A_request(String str, int i);

    public native int ISO14443A_restore(int i);

    public native int ISO14443A_transfer(int i);

    public native char[] ISO14443A_ul_read(int i);

    public native int ISO14443A_ul_write(int i, char[] cArr, int i2);

    public native int ISO14443A_write(int i, char[] cArr, int i2);

    public native char[] ISO14443B_UID();

    public native char[] ISO14443B_cpu_command(char[] cArr, int i);

    public native char[] ISO14443B_cpu_reset();

    public native char[] ISO15693_GenericFunction(char c, char[] cArr, char c2);

    public native char[] ISO15693_getMultipleBlockSecurityStatus(int i, char[] cArr, int i2, int i3, int i4);

    public native char[] ISO15693_getSystemInformation(int i, char[] cArr, int i2);

    public native char[] ISO15693_inventory(int i, int i2);

    public native int ISO15693_lockAFI(int i, char[] cArr, int i2);

    public native int ISO15693_lockBlock(int i, char[] cArr, int i2, int i3, int i4);

    public native int ISO15693_lockDSFID(int i, char[] cArr, int i2);

    public native char[] ISO15693_read_sm(int i, char[] cArr, int i2, int i3, int i4);

    public native char[] ISO15693_transferCommand(char[] cArr, int i);

    public native int ISO15693_writeAFI(int i, char[] cArr, int i2, int i3);

    public native int ISO15693_writeDSFID(int i, char[] cArr, int i2, int i3);

    public native int ISO15693_write_sm(int i, char[] cArr, int i2, int i3, int i4, char[] cArr2, int i5);

    public native byte[] Infared_IDPOWER();

    public native byte[] Infared_IDPOWER07();

    public native int Infrared_Close(String str);

    public native int Infrared_Open(String str, String str2, int i, int i2);

    public native int LedOff(String str, int i);

    public native int LedOn(String str, int i);

    public native int ModuleFree(String str);

    public native int ModuleInit(String str, String str2, int i, int i2);

    public native int ModuleInitEx(String str, String str2, int i, int i2, int i3, int i4, int i5);

    public native int ModulePowerOff(String str, int i);

    public native int ModulePowerOn(String str, int i);

    public native byte[] ModuleReceive();

    public native byte[] ModuleReceiveEx();

    public native int ModuleSend(byte[] bArr, int i);

    public native int ModuleSendAndReceive(byte[] bArr, int i, byte[] bArr2, int i2);

    public native int MorphoCancel();

    public native byte[] MorphoCapture(char c, char c2);

    public native byte[] MorphoDescriptor();

    public native int MorphoEnroll(char c, char[] cArr, char[] cArr2);

    public native int MorphoEnroll(char[] cArr, char[] cArr2, char[] cArr3);

    public native int MorphoEraseAllBase();

    public native int MorphoFingerFree(String str);

    public native int MorphoFingerInit(String str, String str2, int i);

    public native int MorphoFingerMessage();

    public native int MorphoGetSecurityLevel();

    public native byte[] MorphoIdentify(char c);

    public native char[] MorphoIdentify();

    public native int MorphoLoadKs(byte[] bArr);

    public native byte[] MorphoPIDSN();

    public native int MorphoSetSecurityLevel(int i);

    public native int MorphoStop();

    public native int OTG_GPIO_OFF(String str);

    public native int OTG_GPIO_ON(String str);

    public native int OpenSerail(String str, int i, int i2, int i3, int i4, int i5, String str2);

    public native int POWER_LED_OFF(String str);

    public native int POWER_LED_ON(String str);

    public native int PSAM_UPDATE(int i, int i2, int i3, byte[] bArr);

    public native int PTDeleteAllFingers(char c);

    public native int PTEnroll(char c);

    public native int PTExit(String str);

    public native int PTGUICancel(char c);

    public native int PTGrab(char c);

    public native byte[] PTInfo(char c);

    public native int PTInit(String str, String str2);

    public native byte[] PTListAllFingers(char c);

    public native byte[] PTResponseContinue(char c);

    public native byte[] PTTLSFContinue(char c);

    public native int PTVerify(char c);

    public native int PrinterFree(String str);

    public native int PrinterInit(String str, String str2, int i);

    public native int PrinterReceive(byte[] bArr, int i);

    public native int PrinterSend(byte[] bArr, int i);

    public native int PrinterSendAndReceive(byte[] bArr, int i, byte[] bArr2, int i2);

    public native int PrinterSerialPortOpen(String str, String str2, int i);

    public native byte[] Psam_Cmd(String str, char c, char[] cArr, int i);

    public native int Psam_Free(String str);

    public native int Psam_Init(String str);

    public native int R2000_FreHopSet(int i);

    public native int R2000_OPENMODE();

    public native byte[] RFID_GetVer();

    public native int RFID_UPDATE(int i, int i2, int i3, byte[] bArr);

    public native int RFID_free(String str);

    public native int RFID_init(String str, String str2, int i);

    public native int RFID_init_ex(String str, String str2, int i);

    public native int RF_ISO14443A_DESFIRE_AddApp(char[] cArr, int i, int i2);

    public native int RF_ISO14443A_DESFIRE_AddStdFile(int i, int i2, char[] cArr, int i3);

    public native int RF_ISO14443A_DESFIRE_AddValueFile(int i, int i2, char[] cArr, int i3, int i4, int i5);

    public native int RF_ISO14443A_DESFIRE_Auth(int i, char[] cArr, int i2);

    public native int RF_ISO14443A_DESFIRE_ChangeFileSetting(int i, int i2, char[] cArr);

    public native int RF_ISO14443A_DESFIRE_ChangeKey(int i, char[] cArr, int i2);

    public native int RF_ISO14443A_DESFIRE_ChangeKeySetting(int i);

    public native void RF_ISO14443A_DESFIRE_Cpysel(int i);

    public native int RF_ISO14443A_DESFIRE_CreditValueFile(int i, int i2);

    public native int RF_ISO14443A_DESFIRE_DebitValueFile(int i, int i2);

    public native int RF_ISO14443A_DESFIRE_DelApp(char[] cArr);

    public native int RF_ISO14443A_DESFIRE_DelFile(int i);

    public native int RF_ISO14443A_DESFIRE_FormatCard();

    public native byte[] RF_ISO14443A_DESFIRE_GetApps();

    public native byte[] RF_ISO14443A_DESFIRE_GetFileIds();

    public native byte[] RF_ISO14443A_DESFIRE_GetFileSetting(int i);

    public native char[] RF_ISO14443A_DESFIRE_GetKeySetting();

    public native char[] RF_ISO14443A_DESFIRE_GetPiccInfo();

    public native int[] RF_ISO14443A_DESFIRE_GetValueFile(int i);

    public native int RF_ISO14443A_DESFIRE_RatPss();

    public native char[] RF_ISO14443A_DESFIRE_ReadStdFile(int i, int i2, int i3);

    public native int RF_ISO14443A_DESFIRE_SelApp(byte[] bArr);

    public native int RF_ISO14443A_DESFIRE_WriteStdFile(int i, int i2, int i3, char[] cArr);

    public native int Request_WriteSpecialPart(int i, byte[] bArr);

    public native int Requset_ReadPart(byte b, byte b2, byte b3, byte b4, byte b5, byte b6);

    public native int Requset_WritePart(byte[] bArr, byte b, byte b2, byte b3, byte[] bArr2);

    public native void ScanerLed_Free(String str);

    public native void ScanerLed_Init(String str);

    public native void ScanerLed_Off(String str);

    public native void ScanerLed_On(String str);

    public native int SerailClose(String str);

    public native int SerailOpen(String str, String str2, int i, int i2, int i3);

    public native int SetConfig(byte[] bArr);

    public native int SetGen2(char c, char c2, char c3, char c4, char c5, char c6, char c7, char c8, char c9, char c10, char c11, char c12, char c13, char c14);

    public native int SetInventoryFixed(int i);

    public native int SetInventorySper();

    public native int SetInventorySper(int i);

    public native int SetQTPara(char c);

    public native int SetTestMode();

    public native byte[] TransBuf(byte b, int i, byte[] bArr);

    public native byte[] TransData(byte[] bArr, int i, byte b);

    public native void UHF706_CloseAndDisconnect();

    public native int UHF706_OpenAndConnect(String str);

    public native char[] UHFBlockPermalock(char[] cArr, char c, char c2, char c3, char[] cArr2, char c4, char c5, char c6, char c7, char[] cArr3);

    public native void UHFCloseAndDisconnect();

    public native int UHFDeactivate(int i, char[] cArr, char c, int i2, int i3, char[] cArr2);

    public native int UHFDwell(int i, int i2);

    public native int UHFEraseData(char[] cArr, char c, int i, char c2, char[] cArr2);

    public native char[] UHFEraseDataSingle(char[] cArr, char c, int i, char c2);

    public native void UHFFlafCrcOff();

    public native void UHFFlagCrcOn();

    public native int UHFFree(String str);

    public native char[] UHFGetBID();

    public native char[] UHFGetCW();

    public native char[] UHFGetEPCTIDMode();

    public native char[] UHFGetFrequency();

    public native char[] UHFGetFrequency_Ex();

    public native char[] UHFGetHwType();

    public native byte[] UHFGetMode();

    public native char[] UHFGetMultiDataReceived();

    public native char[] UHFGetParam(char c, char[] cArr);

    public native char[] UHFGetPower();

    public native int[] UHFGetPwm();

    public native byte[] UHFGetRFLink();

    public native int[] UHFGetRSSI();

    public native char[] UHFGetReceived();

    public native char[] UHFGetReceived_EX();

    public native char[] UHFGetReceived_EX_R2000();

    public native char[] UHFGetSingelMode();

    public native char[] UHFGetVersion();

    public native int UHFInit(String str);

    public native int UHFInventory(char c, char c2);

    public native int UHFInventoryBID(char c, char c2);

    public native int UHFInventoryBank(char[] cArr, char c, int i, int i2);

    public native char[] UHFInventorySingle();

    public native char[] UHFInventorySingle_EX();

    public native char[] UHFInventorySingle_R2000();

    public native char[] UHFInventorySingle_tc(char c);

    public native int UHFInventoryTID(char c, char c2);

    public native int UHFInventory_EX(char c, char c2);

    public native int UHFInventory_EX_BankPtrCnt(char c, char c2, char c3, char c4, char c5);

    public native int UHFInventory_EX_cnt(char c, char c2, char c3);

    public native int UHFJump2Boot();

    public native int UHFKillTag(char[] cArr, char[] cArr2);

    public native char[] UHFKillTagSingle(char[] cArr);

    public native int UHFLockMem(char[] cArr, char[] cArr2, char[] cArr3);

    public native int UHFLockMemEx(char[] cArr, char c, int i, int i2, char[] cArr2, char[] cArr3);

    public native char[] UHFLockMemSingle(char[] cArr, char[] cArr2);

    public native int UHFOpenAndConnect(String str);

    public native int UHFOpenAndConnect_Ex(String str);

    public native char[] UHFReadData(char[] cArr, char c, int i, char c2, char[] cArr2);

    public native char[] UHFReadDataSingle(char[] cArr, char c, int i, char c2);

    public native char[] UHFReadData_EX(char[] cArr, char c, int i, char c2, char[] cArr2);

    public native char[] UHFReadData_Ex2(char[] cArr, char c, int i, int i2, char[] cArr2, char c2, int i3, char c3);

    public native char[] UHFReadQTData(char[] cArr, char c, int i, char c2, char[] cArr2);

    public native char[] UHFReadQTDataSingle(char[] cArr, char c, int i, char c2);

    public native char[] UHFReadQTData_Ex(char[] cArr, char c, int i, int i2, char[] cArr2, char c2, int i3, char c3);

    public native int UHFSetCW(char c);

    public native int UHFSetEPCTIDMode(char c);

    public native int UHFSetFastID(char c);

    public native int UHFSetFilter(char c, char c2, int i, int i2, char[] cArr);

    public native int UHFSetFilter_Ex(char c, char c2, int i, int i2, char[] cArr);

    public native int UHFSetFrequency(char c, char c2, char[] cArr, char c3, char c4, char c5);

    public native int UHFSetFrequency_EX(char c);

    public native int UHFSetMode(char c);

    public native int UHFSetParam(char c, char[] cArr, char[] cArr2);

    public native int UHFSetPower(char c);

    public native int UHFSetPwm(int i, int i2);

    public native int UHFSetRFLink(char c);

    public native int UHFSetSingelMode(char c);

    public native int UHFSetTagFocus(char c);

    public native int UHFStartReadDataFromMultiTag(char c, char[] cArr, char c2, char c3, char c4);

    public native int UHFStartUpdate();

    public native int UHFStopGet();

    public native int UHFStopUpdate();

    public native int UHFUpdating(byte[] bArr);

    public native int UHFWriteData(char[] cArr, char c, int i, char c2, char[] cArr2, char[] cArr3);

    public native char[] UHFWriteDataSingle(char[] cArr, char c, int i, char c2, char[] cArr2);

    public native int UHFWriteData_Ex2(char[] cArr, char c, int i, int i2, char[] cArr2, char c2, int i3, int i4, char[] cArr3);

    public native int UHFWriteQTData(char[] cArr, char c, int i, char c2, char[] cArr2, char[] cArr3);

    public native char[] UHFWriteQTDataSingle(char[] cArr, char c, int i, char c2, char[] cArr2);

    public native int UHFWriteQTData_Ex(char[] cArr, char c, int i, int i2, char[] cArr2, char c2, int i3, int i4, char[] cArr3);

    @Deprecated
    public native int UartSwitch(String str, int i);

    public native int Um7ProtocolConfig(char c);

    public native byte[] Update_ReadInfo();

    public native int bdOff(String str);

    public native int bdOn(String str);

    public native byte[] fips_encryption_decryption(byte[] bArr, int i, byte[] bArr2, int i2, byte b);

    public native byte[] fips_encryption_decryption_EX(byte[] bArr, int i, byte[] bArr2, int i2, byte b, Object obj, int i3);

    public native byte[] getPsamId();

    public native byte[] infrared_read();

    public native int infrared_write(byte[] bArr, int i);

    public native void spClose();

    public native FileDescriptor spOpen(String str, int i, int i2);
}
