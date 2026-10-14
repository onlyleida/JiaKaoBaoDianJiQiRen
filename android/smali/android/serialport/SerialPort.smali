.class public final Landroid/serialport/SerialPort;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/serialport/SerialPort$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_SU_PATH:Ljava/lang/String; = "/system/bin/su"

.field private static final TAG:Ljava/lang/String; = "SerialPort"

.field private static sSuPath:Ljava/lang/String; = "/system/bin/su"


# instance fields
.field private mFd:Ljava/io/FileDescriptor;

.field private mFileInputStream:Ljava/io/FileInputStream;

.field private mFileOutputStream:Ljava/io/FileOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "serial_port"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIIII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    sget-object v1, Landroid/serialport/SerialPort;->sSuPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod 666 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nexit\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    .line 8
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Landroid/serialport/SerialPort;->open(Ljava/lang/String;IIIII)Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Landroid/serialport/SerialPort;->mFd:Ljava/io/FileDescriptor;

    if-eqz p1, :cond_2

    .line 9
    new-instance p1, Ljava/io/FileInputStream;

    iget-object p2, p0, Landroid/serialport/SerialPort;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object p1, p0, Landroid/serialport/SerialPort;->mFileInputStream:Ljava/io/FileInputStream;

    .line 10
    new-instance p1, Ljava/io/FileOutputStream;

    iget-object p2, p0, Landroid/serialport/SerialPort;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object p1, p0, Landroid/serialport/SerialPort;->mFileOutputStream:Ljava/io/FileOutputStream;

    return-void

    :cond_2
    const-string p1, "SerialPort"

    const-string p2, "native open returns null"

    .line 11
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 13
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    throw p1
.end method

.method synthetic constructor <init>(Ljava/io/File;IIIIILandroid/serialport/SerialPort$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p6}, Landroid/serialport/SerialPort;-><init>(Ljava/io/File;IIIII)V

    return-void
.end method

.method public static getSuPath()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/serialport/SerialPort;->sSuPath:Ljava/lang/String;

    return-object v0
.end method

.method public static newBuilder(Ljava/io/File;I)Landroid/serialport/SerialPort$Builder;
    .locals 2

    .line 1
    new-instance v0, Landroid/serialport/SerialPort$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/serialport/SerialPort$Builder;-><init>(Ljava/io/File;ILandroid/serialport/SerialPort$1;)V

    return-object v0
.end method

.method public static newBuilder(Ljava/lang/String;I)Landroid/serialport/SerialPort$Builder;
    .locals 2

    .line 2
    new-instance v0, Landroid/serialport/SerialPort$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/serialport/SerialPort$Builder;-><init>(Ljava/lang/String;ILandroid/serialport/SerialPort$1;)V

    return-object v0
.end method

.method private native open(Ljava/lang/String;IIIII)Ljava/io/FileDescriptor;
.end method

.method public static setSuPath(Ljava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    sput-object p0, Landroid/serialport/SerialPort;->sSuPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public native close()V
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/serialport/SerialPort;->mFileInputStream:Ljava/io/FileInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/serialport/SerialPort;->mFileOutputStream:Ljava/io/FileOutputStream;

    return-object v0
.end method
