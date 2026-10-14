.class final Lcom/rscja/deviceapi/DeviceAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/rscja/deviceapi/DeviceAPI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DeviceAPI"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/rscja/deviceapi/DeviceAPI;
    .locals 2

    const-class v0, Lcom/rscja/deviceapi/DeviceAPI;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/rscja/deviceapi/DeviceAPI;->a:Lcom/rscja/deviceapi/DeviceAPI;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/rscja/deviceapi/DeviceAPI;

    invoke-direct {v1}, Lcom/rscja/deviceapi/DeviceAPI;-><init>()V

    sput-object v1, Lcom/rscja/deviceapi/DeviceAPI;->a:Lcom/rscja/deviceapi/DeviceAPI;

    .line 3
    :cond_0
    sget-object v1, Lcom/rscja/deviceapi/DeviceAPI;->a:Lcom/rscja/deviceapi/DeviceAPI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public native Auth_ActiveFile(B[B[B[B)I
.end method

.method public native Auth_CertificationChain(BBI[B)I
.end method

.method public native Auth_RequestRandom()[B
.end method

.method public native Auth_SendData([B[B[B[B[BI[B)I
.end method

.method public native Auth_UserInfo([B[B[B[B[B[B[B[B[B[B[B[B)[B
.end method

.method public native BDReceive()[B
.end method

.method public native BDSend([BI)I
.end method

.method public native BDSerialportClose()I
.end method

.method public native BDSerialportOpen(Ljava/lang/String;I)I
.end method

.method public native BDSwitchSerialport()I
.end method

.method public native Barcode_1D_Close(Ljava/lang/String;)I
.end method

.method public native Barcode_1D_Open(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public native Barcode_1D_Scan(Ljava/lang/String;)[B
.end method

.method public native Barcode_1D_StopScan(Ljava/lang/String;)I
.end method

.method public native Barcode_2D_Close(Ljava/lang/String;)I
.end method

.method public native Barcode_2D_Open(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public native Barcode_2D_Scan(Ljava/lang/String;)[B
.end method

.method public native Barcode_2D_StopScan(Ljava/lang/String;)I
.end method

.method public native CardBalance()[B
.end method

.method public native CardConsume([B[C)[B
.end method

.method public native CardConsume([B[CLjava/lang/String;I)[B
.end method

.method public native CardConsumeConfirm([B[C[C)[B
.end method

.method public native CleanVar()V
.end method

.method public native ConfigFDXTag([C[C)I
.end method

.method public native Config_GetAccess()[B
.end method

.method public native Config_GetPara(I)[B
.end method

.method public native Config_ReadRTC()[B
.end method

.method public native Config_SetPara(IB[B)I
.end method

.method public native Config_SetRTC([B)I
.end method

.method public native Config_SetWorkMode(B[B)I
.end method

.method public native EM125K_GetEm4450UID()[C
.end method

.method public native EM125k_Read4305(I)[C
.end method

.method public native EM125k_ReadHitag(I)[C
.end method

.method public native EM125k_ReadHitag1()[C
.end method

.method public native EM125k_UID_REQ()[C
.end method

.method public native EM125k_Write4305(I[C)I
.end method

.method public native EM125k_WriteHitagPage(I[C)I
.end method

.method public native EM125k_free(Ljava/lang/String;)I
.end method

.method public native EM125k_init(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public native EM125k_init_Ex(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public native EM125k_read(I)[C
.end method

.method public native EM125k_read_Ex()[C
.end method

.method public native EMAutoEnroll(II)[I
.end method

.method public native EMAutoMatch(III)[I
.end method

.method public native EMDeletChar(II)I
.end method

.method public native EMDownChar(I[C)I
.end method

.method public native EMEmpty()I
.end method

.method public native EMFingerFree(Ljava/lang/String;)I
.end method

.method public native EMFingerInit(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public native EMGenChar(I)I
.end method

.method public native EMGetImage()I
.end method

.method public native EMGetRandomData()[C
.end method

.method public native EMLoadChar(II)I
.end method

.method public native EMMatch()[I
.end method

.method public native EMMatchEx()[I
.end method

.method public native EMReadChipSN()[C
.end method

.method public native EMReadSysPara()[C
.end method

.method public native EMReadSysParaMore()[C
.end method

.method public native EMRegModel()I
.end method

.method public native EMSearch(III)[I
.end method

.method public native EMSetDeviceName([C)I
.end method

.method public native EMSetManuFacture([C)I
.end method

.method public native EMSetPSW([C)I
.end method

.method public native EMSetReg(II)I
.end method

.method public native EMStorChar(II)I
.end method

.method public native EMUpChar(I)[C
.end method

.method public native EMUpImage(ILjava/lang/String;)[I
.end method

.method public native EMUpImageISO(ILjava/lang/String;)[I
.end method

.method public native EMValidTempleteNum()[I
.end method

.method public native EMVfyPSW([C)I
.end method

.method public native EM_25kread()[C
.end method

.method public native EventReport()I
.end method

.method public native GetAccState()V
.end method

.method public native GetGen2()[C
.end method

.method public native GetQTPara()[C
.end method

.method public native GetStr([B)I
.end method

.method public native GetTemperature()[C
.end method

.method public native HID_GetUid()I
.end method

.method public native HardwareVersion_125k()[C
.end method

.method public native ISO14443A_BUS_CMD([C[CII)[C
.end method

.method public native ISO14443A_authentication(II[CI)I
.end method

.method public native ISO14443A_cpu_command([CI)[C
.end method

.method public native ISO14443A_cpu_rats()[C
.end method

.method public native ISO14443A_cpu_reset()[C
.end method

.method public native ISO14443A_decrement(III)I
.end method

.method public native ISO14443A_increment(III)I
.end method

.method public native ISO14443A_initval(II)I
.end method

.method public native ISO14443A_mifareone_alldata_read(I[C)[C
.end method

.method public native ISO14443A_read(I)[C
.end method

.method public native ISO14443A_readval(I)[I
.end method

.method public native ISO14443A_request(Ljava/lang/String;I)[B
.end method

.method public native ISO14443A_restore(I)I
.end method

.method public native ISO14443A_transfer(I)I
.end method

.method public native ISO14443A_ul_read(I)[C
.end method

.method public native ISO14443A_ul_write(I[CI)I
.end method

.method public native ISO14443A_write(I[CI)I
.end method

.method public native ISO14443B_UID()[C
.end method

.method public native ISO14443B_cpu_command([CI)[C
.end method

.method public native ISO14443B_cpu_reset()[C
.end method

.method public native ISO15693_GenericFunction(C[CC)[C
.end method

.method public native ISO15693_getMultipleBlockSecurityStatus(I[CIII)[C
.end method

.method public native ISO15693_getSystemInformation(I[CI)[C
.end method

.method public native ISO15693_inventory(II)[C
.end method

.method public native ISO15693_lockAFI(I[CI)I
.end method

.method public native ISO15693_lockBlock(I[CIII)I
.end method

.method public native ISO15693_lockDSFID(I[CI)I
.end method

.method public native ISO15693_read_sm(I[CIII)[C
.end method

.method public native ISO15693_transferCommand([CI)[C
.end method

.method public native ISO15693_writeAFI(I[CII)I
.end method

.method public native ISO15693_writeDSFID(I[CII)I
.end method

.method public native ISO15693_write_sm(I[CIII[CI)I
.end method

.method public native Infared_IDPOWER()[B
.end method

.method public native Infared_IDPOWER07()[B
.end method

.method public native Infrared_Close(Ljava/lang/String;)I
.end method

.method public native Infrared_Open(Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public native LedOff(Ljava/lang/String;I)I
.end method

.method public native LedOn(Ljava/lang/String;I)I
.end method

.method public native ModuleFree(Ljava/lang/String;)I
.end method

.method public native ModuleInit(Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public native ModuleInitEx(Ljava/lang/String;Ljava/lang/String;IIIII)I
.end method

.method public native ModulePowerOff(Ljava/lang/String;I)I
.end method

.method public native ModulePowerOn(Ljava/lang/String;I)I
.end method

.method public native ModuleReceive()[B
.end method

.method public native ModuleReceiveEx()[B
.end method

.method public native ModuleSend([BI)I
.end method

.method public native ModuleSendAndReceive([BI[BI)I
.end method

.method public native MorphoCancel()I
.end method

.method public native MorphoCapture(CC)[B
.end method

.method public native MorphoDescriptor()[B
.end method

.method public native MorphoEnroll(C[C[C)I
.end method

.method public native MorphoEnroll([C[C[C)I
.end method

.method public native MorphoEraseAllBase()I
.end method

.method public native MorphoFingerFree(Ljava/lang/String;)I
.end method

.method public native MorphoFingerInit(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public native MorphoFingerMessage()I
.end method

.method public native MorphoGetSecurityLevel()I
.end method

.method public native MorphoIdentify(C)[B
.end method

.method public native MorphoIdentify()[C
.end method

.method public native MorphoLoadKs([B)I
.end method

.method public native MorphoPIDSN()[B
.end method

.method public native MorphoSetSecurityLevel(I)I
.end method

.method public native MorphoStop()I
.end method

.method public native OTG_GPIO_OFF(Ljava/lang/String;)I
.end method

.method public native OTG_GPIO_ON(Ljava/lang/String;)I
.end method

.method public native OpenSerail(Ljava/lang/String;IIIIILjava/lang/String;)I
.end method

.method public native POWER_LED_OFF(Ljava/lang/String;)I
.end method

.method public native POWER_LED_ON(Ljava/lang/String;)I
.end method

.method public native PSAM_UPDATE(III[B)I
.end method

.method public native PTDeleteAllFingers(C)I
.end method

.method public native PTEnroll(C)I
.end method

.method public native PTExit(Ljava/lang/String;)I
.end method

.method public native PTGUICancel(C)I
.end method

.method public native PTGrab(C)I
.end method

.method public native PTInfo(C)[B
.end method

.method public native PTInit(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native PTListAllFingers(C)[B
.end method

.method public native PTResponseContinue(C)[B
.end method

.method public native PTTLSFContinue(C)[B
.end method

.method public native PTVerify(C)I
.end method

.method public native PrinterFree(Ljava/lang/String;)I
.end method

.method public native PrinterInit(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public native PrinterReceive([BI)I
.end method

.method public native PrinterSend([BI)I
.end method

.method public native PrinterSendAndReceive([BI[BI)I
.end method

.method public native PrinterSerialPortOpen(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public native Psam_Cmd(Ljava/lang/String;C[CI)[B
.end method

.method public native Psam_Free(Ljava/lang/String;)I
.end method

.method public native Psam_Init(Ljava/lang/String;)I
.end method

.method public native R2000_FreHopSet(I)I
.end method

.method public native R2000_OPENMODE()I
.end method

.method public native RFID_GetVer()[B
.end method

.method public native RFID_UPDATE(III[B)I
.end method

.method public native RFID_free(Ljava/lang/String;)I
.end method

.method public native RFID_init(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public native RFID_init_ex(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public native RF_ISO14443A_DESFIRE_AddApp([CII)I
.end method

.method public native RF_ISO14443A_DESFIRE_AddStdFile(II[CI)I
.end method

.method public native RF_ISO14443A_DESFIRE_AddValueFile(II[CIII)I
.end method

.method public native RF_ISO14443A_DESFIRE_Auth(I[CI)I
.end method

.method public native RF_ISO14443A_DESFIRE_ChangeFileSetting(II[C)I
.end method

.method public native RF_ISO14443A_DESFIRE_ChangeKey(I[CI)I
.end method

.method public native RF_ISO14443A_DESFIRE_ChangeKeySetting(I)I
.end method

.method public native RF_ISO14443A_DESFIRE_Cpysel(I)V
.end method

.method public native RF_ISO14443A_DESFIRE_CreditValueFile(II)I
.end method

.method public native RF_ISO14443A_DESFIRE_DebitValueFile(II)I
.end method

.method public native RF_ISO14443A_DESFIRE_DelApp([C)I
.end method

.method public native RF_ISO14443A_DESFIRE_DelFile(I)I
.end method

.method public native RF_ISO14443A_DESFIRE_FormatCard()I
.end method

.method public native RF_ISO14443A_DESFIRE_GetApps()[B
.end method

.method public native RF_ISO14443A_DESFIRE_GetFileIds()[B
.end method

.method public native RF_ISO14443A_DESFIRE_GetFileSetting(I)[B
.end method

.method public native RF_ISO14443A_DESFIRE_GetKeySetting()[C
.end method

.method public native RF_ISO14443A_DESFIRE_GetPiccInfo()[C
.end method

.method public native RF_ISO14443A_DESFIRE_GetValueFile(I)[I
.end method

.method public native RF_ISO14443A_DESFIRE_RatPss()I
.end method

.method public native RF_ISO14443A_DESFIRE_ReadStdFile(III)[C
.end method

.method public native RF_ISO14443A_DESFIRE_SelApp([B)I
.end method

.method public native RF_ISO14443A_DESFIRE_WriteStdFile(III[C)I
.end method

.method public native Request_WriteSpecialPart(I[B)I
.end method

.method public native Requset_ReadPart(BBBBBB)I
.end method

.method public native Requset_WritePart([BBBB[B)I
.end method

.method public native ScanerLed_Free(Ljava/lang/String;)V
.end method

.method public native ScanerLed_Init(Ljava/lang/String;)V
.end method

.method public native ScanerLed_Off(Ljava/lang/String;)V
.end method

.method public native ScanerLed_On(Ljava/lang/String;)V
.end method

.method public native SerailClose(Ljava/lang/String;)I
.end method

.method public native SerailOpen(Ljava/lang/String;Ljava/lang/String;III)I
.end method

.method public native SetConfig([B)I
.end method

.method public native SetGen2(CCCCCCCCCCCCCC)I
.end method

.method public native SetInventoryFixed(I)I
.end method

.method public native SetInventorySper()I
.end method

.method public native SetInventorySper(I)I
.end method

.method public native SetQTPara(C)I
.end method

.method public native SetTestMode()I
.end method

.method public native TransBuf(BI[B)[B
.end method

.method public native TransData([BIB)[B
.end method

.method public native UHF706_CloseAndDisconnect()V
.end method

.method public native UHF706_OpenAndConnect(Ljava/lang/String;)I
.end method

.method public native UHFBlockPermalock([CCCC[CCCCC[C)[C
.end method

.method public native UHFCloseAndDisconnect()V
.end method

.method public native UHFDeactivate(I[CCII[C)I
.end method

.method public native UHFDwell(II)I
.end method

.method public native UHFEraseData([CCIC[C)I
.end method

.method public native UHFEraseDataSingle([CCIC)[C
.end method

.method public native UHFFlafCrcOff()V
.end method

.method public native UHFFlagCrcOn()V
.end method

.method public native UHFFree(Ljava/lang/String;)I
.end method

.method public native UHFGetBID()[C
.end method

.method public native UHFGetCW()[C
.end method

.method public native UHFGetEPCTIDMode()[C
.end method

.method public native UHFGetFrequency()[C
.end method

.method public native UHFGetFrequency_Ex()[C
.end method

.method public native UHFGetHwType()[C
.end method

.method public native UHFGetMode()[B
.end method

.method public native UHFGetMultiDataReceived()[C
.end method

.method public native UHFGetParam(C[C)[C
.end method

.method public native UHFGetPower()[C
.end method

.method public native UHFGetPwm()[I
.end method

.method public native UHFGetRFLink()[B
.end method

.method public native UHFGetRSSI()[I
.end method

.method public native UHFGetReceived()[C
.end method

.method public native UHFGetReceived_EX()[C
.end method

.method public native UHFGetReceived_EX_R2000()[C
.end method

.method public native UHFGetSingelMode()[C
.end method

.method public native UHFGetVersion()[C
.end method

.method public native UHFInit(Ljava/lang/String;)I
.end method

.method public native UHFInventory(CC)I
.end method

.method public native UHFInventoryBID(CC)I
.end method

.method public native UHFInventoryBank([CCII)I
.end method

.method public native UHFInventorySingle()[C
.end method

.method public native UHFInventorySingle_EX()[C
.end method

.method public native UHFInventorySingle_R2000()[C
.end method

.method public native UHFInventorySingle_tc(C)[C
.end method

.method public native UHFInventoryTID(CC)I
.end method

.method public native UHFInventory_EX(CC)I
.end method

.method public native UHFInventory_EX_BankPtrCnt(CCCCC)I
.end method

.method public native UHFInventory_EX_cnt(CCC)I
.end method

.method public native UHFJump2Boot()I
.end method

.method public native UHFKillTag([C[C)I
.end method

.method public native UHFKillTagSingle([C)[C
.end method

.method public native UHFLockMem([C[C[C)I
.end method

.method public native UHFLockMemEx([CCII[C[C)I
.end method

.method public native UHFLockMemSingle([C[C)[C
.end method

.method public native UHFOpenAndConnect(Ljava/lang/String;)I
.end method

.method public native UHFOpenAndConnect_Ex(Ljava/lang/String;)I
.end method

.method public native UHFReadData([CCIC[C)[C
.end method

.method public native UHFReadDataSingle([CCIC)[C
.end method

.method public native UHFReadData_EX([CCIC[C)[C
.end method

.method public native UHFReadData_Ex2([CCII[CCIC)[C
.end method

.method public native UHFReadQTData([CCIC[C)[C
.end method

.method public native UHFReadQTDataSingle([CCIC)[C
.end method

.method public native UHFReadQTData_Ex([CCII[CCIC)[C
.end method

.method public native UHFSetCW(C)I
.end method

.method public native UHFSetEPCTIDMode(C)I
.end method

.method public native UHFSetFastID(C)I
.end method

.method public native UHFSetFilter(CCII[C)I
.end method

.method public native UHFSetFilter_Ex(CCII[C)I
.end method

.method public native UHFSetFrequency(CC[CCCC)I
.end method

.method public native UHFSetFrequency_EX(C)I
.end method

.method public native UHFSetMode(C)I
.end method

.method public native UHFSetParam(C[C[C)I
.end method

.method public native UHFSetPower(C)I
.end method

.method public native UHFSetPwm(II)I
.end method

.method public native UHFSetRFLink(C)I
.end method

.method public native UHFSetSingelMode(C)I
.end method

.method public native UHFSetTagFocus(C)I
.end method

.method public native UHFStartReadDataFromMultiTag(C[CCCC)I
.end method

.method public native UHFStartUpdate()I
.end method

.method public native UHFStopGet()I
.end method

.method public native UHFStopUpdate()I
.end method

.method public native UHFUpdating([B)I
.end method

.method public native UHFWriteData([CCIC[C[C)I
.end method

.method public native UHFWriteDataSingle([CCIC[C)[C
.end method

.method public native UHFWriteData_Ex2([CCII[CCII[C)I
.end method

.method public native UHFWriteQTData([CCIC[C[C)I
.end method

.method public native UHFWriteQTDataSingle([CCIC[C)[C
.end method

.method public native UHFWriteQTData_Ex([CCII[CCII[C)I
.end method

.method public native UartSwitch(Ljava/lang/String;I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native Um7ProtocolConfig(C)I
.end method

.method public native Update_ReadInfo()[B
.end method

.method public native bdOff(Ljava/lang/String;)I
.end method

.method public native bdOn(Ljava/lang/String;)I
.end method

.method public native fips_encryption_decryption([BI[BIB)[B
.end method

.method public native fips_encryption_decryption_EX([BI[BIBLjava/lang/Object;I)[B
.end method

.method public native getPsamId()[B
.end method

.method public native infrared_read()[B
.end method

.method public native infrared_write([BI)I
.end method

.method public native spClose()V
.end method

.method public native spOpen(Ljava/lang/String;II)Ljava/io/FileDescriptor;
.end method
