.class public Lcom/iflytek/cloud/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String; = "xiaoyan"

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/iflytek/cloud/a/f/a;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isLongInput()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1388

    goto :goto_0

    :cond_0
    const/16 p0, 0xfa0

    :goto_0
    return p0
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .line 65
    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    const-string v1, "appid"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/SpeechUtility;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 59
    :cond_0
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/a;->b(Landroid/content/Context;)Lcom/iflytek/cloud/b/a;

    move-result-object p0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "os.imsi"

    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "os.imei"

    .line 61
    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    const-string v0, "net.mac"

    .line 63
    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_2

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/iflytek/cloud/a/f/a;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iflytek/cloud/b/a;->b()Lcom/iflytek/cloud/b/a;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/iflytek/cloud/b/c;->b:Ljava/lang/String;

    const-string v1, "net_type"

    invoke-virtual {p1, v1, v0}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/cloud/b/c;->b:Ljava/lang/String;

    .line 3
    invoke-static {p0, p1}, Lcom/iflytek/cloud/b/c;->b(Landroid/content/Context;Lcom/iflytek/cloud/b/a;)V

    const-string v0, "timeout"

    const-string v1, "20000"

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p1, v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "auth"

    const-string v1, "1"

    .line 5
    invoke-virtual {p1, v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6
    invoke-static {}, Lcom/iflytek/cloud/Version;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "msc.ver"

    invoke-virtual {p1, v1, v0}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/a;->b(Landroid/content/Context;)Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "net.mac"

    .line 8
    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mac"

    invoke-virtual {p1, v1, v0, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    invoke-static {p0}, Lcom/iflytek/cloud/b/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dvc"

    invoke-virtual {p1, v1, v0, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 10
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/k;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "unique_id"

    invoke-virtual {p1, v1, v0}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/a;->f(Landroid/content/Context;)Lcom/iflytek/cloud/b/a;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/iflytek/cloud/b/a;->a(Lcom/iflytek/cloud/b/a;)V

    .line 12
    invoke-static {p1}, Lcom/iflytek/cloud/b/c;->a(Lcom/iflytek/cloud/b/a;)V

    .line 13
    sget-object p0, Lcom/iflytek/cloud/b/b;->c:[[Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/iflytek/cloud/b/a;->a([[Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/iflytek/cloud/b/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 15
    :cond_0
    new-instance p0, Lcom/iflytek/cloud/SpeechError;

    const/16 p1, 0x4e2c

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/cloud/a/f/a;)Ljava/lang/String;
    .locals 4

    .line 28
    invoke-virtual {p2}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/b/a;->b()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "cloud_grammar"

    .line 29
    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/b/a;->f(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 30
    invoke-static {p0, v0}, Lcom/iflytek/cloud/b/c;->b(Landroid/content/Context;Lcom/iflytek/cloud/b/a;)V

    .line 31
    invoke-static {p0, v0}, Lcom/iflytek/cloud/b/c;->a(Landroid/content/Context;Lcom/iflytek/cloud/b/a;)V

    const-string v1, "language"

    const-string v2, "zh_cn"

    const/4 v3, 0x0

    .line 32
    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "accent"

    const-string v2, "mandarin"

    .line 33
    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "result_type"

    const-string v2, "json"

    .line 34
    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 35
    invoke-virtual {p2}, Lcom/iflytek/cloud/a/f/a;->getResultEncoding()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rse"

    invoke-virtual {v0, v2, v1, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 36
    invoke-virtual {p2}, Lcom/iflytek/cloud/a/f/a;->getTextEncoding()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text_encoding"

    invoke-virtual {v0, v2, v1, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "ssm"

    const-string v2, "1"

    .line 37
    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "msc.skin"

    const-string v2, "0"

    .line 38
    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v1, "subject"

    if-eqz p1, :cond_0

    const-string p1, "iat"

    .line 40
    invoke-virtual {v0, v1, p1, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string p1, "asr"

    .line 41
    invoke-virtual {v0, v1, p1, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 42
    :goto_0
    invoke-virtual {p2}, Lcom/iflytek/cloud/a/f/a;->getSampleRate()I

    move-result p1

    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auf=audio/L16;rate"

    invoke-virtual {v0, v2, v1, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0x3e80

    const-string v2, "aue"

    if-ne p1, v1, :cond_1

    const-string p1, "speex-wb"

    .line 44
    invoke-virtual {v0, v2, p1, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    const-string p1, "speex"

    .line 45
    invoke-virtual {v0, v2, p1, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 46
    :goto_1
    invoke-static {p2}, Lcom/iflytek/cloud/b/c;->a(Lcom/iflytek/cloud/a/f/a;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "vad_bos"

    invoke-virtual {v0, v1, p1, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 47
    invoke-static {p2}, Lcom/iflytek/cloud/b/c;->b(Lcom/iflytek/cloud/a/f/a;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "vad_eos"

    invoke-virtual {v0, p2, p1, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, "dvc_info"

    .line 48
    invoke-virtual {v0, p1, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 49
    invoke-static {p0, v0}, Lcom/iflytek/cloud/b/c;->b(Landroid/content/Context;Lcom/iflytek/cloud/b/a;)V

    .line 50
    invoke-static {p0}, Lcom/iflytek/cloud/b/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "dvc"

    invoke-virtual {v0, p2, p1, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 51
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/k;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "unique_id"

    invoke-virtual {v0, p2, p1}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "user_agent"

    .line 54
    invoke-virtual {v0, v1, p1, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, "device_type"

    .line 55
    invoke-virtual {v0, p1, p2, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 56
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/a;->f(Landroid/content/Context;)Lcom/iflytek/cloud/b/a;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/iflytek/cloud/b/a;->a(Lcom/iflytek/cloud/b/a;)V

    .line 57
    :cond_2
    sget-object p0, Lcom/iflytek/cloud/b/b;->c:[[Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/iflytek/cloud/b/a;->a([[Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Lcom/iflytek/cloud/b/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/iflytek/cloud/b/a;)V
    .locals 1

    .line 26
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "act_name"

    .line 27
    invoke-virtual {p1, v0, p0}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/iflytek/cloud/b/a;)V
    .locals 4

    if-eqz p0, :cond_5

    .line 16
    invoke-static {}, Lcom/iflytek/cloud/Setting;->getLogLevel()Lcom/iflytek/cloud/Setting$LOG_LEVEL;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/Setting$LOG_LEVEL;->none:Lcom/iflytek/cloud/Setting$LOG_LEVEL;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 17
    :cond_0
    invoke-static {}, Lcom/iflytek/cloud/Setting;->getLogPath()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "/sdcard/msc/msc.log"

    :cond_1
    const/4 v1, -0x1

    .line 19
    invoke-static {}, Lcom/iflytek/cloud/Setting;->getLogLevel()Lcom/iflytek/cloud/Setting$LOG_LEVEL;

    move-result-object v2

    sget-object v3, Lcom/iflytek/cloud/Setting$LOG_LEVEL;->detail:Lcom/iflytek/cloud/Setting$LOG_LEVEL;

    if-ne v2, v3, :cond_2

    const/16 v1, 0x1f

    goto :goto_0

    .line 20
    :cond_2
    invoke-static {}, Lcom/iflytek/cloud/Setting;->getLogLevel()Lcom/iflytek/cloud/Setting$LOG_LEVEL;

    move-result-object v2

    sget-object v3, Lcom/iflytek/cloud/Setting$LOG_LEVEL;->normal:Lcom/iflytek/cloud/Setting$LOG_LEVEL;

    if-ne v2, v3, :cond_3

    const/16 v1, 0xf

    goto :goto_0

    .line 21
    :cond_3
    invoke-static {}, Lcom/iflytek/cloud/Setting;->getLogLevel()Lcom/iflytek/cloud/Setting$LOG_LEVEL;

    move-result-object v2

    sget-object v3, Lcom/iflytek/cloud/Setting$LOG_LEVEL;->low:Lcom/iflytek/cloud/Setting$LOG_LEVEL;

    if-ne v2, v3, :cond_4

    const/4 v1, 0x7

    .line 22
    :cond_4
    :goto_0
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/FileUtil;->makeDir(Ljava/lang/String;)V

    const-string v2, "log"

    .line 23
    invoke-virtual {p0, v2, v0}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lvl"

    invoke-virtual {p0, v1, v0}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "output"

    const-string v2, "1"

    .line 25
    invoke-virtual {p0, v1, v2, v0}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "sms"

    .line 66
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "iat"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Lcom/iflytek/cloud/a/f/a;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isLongInput()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x708

    goto :goto_0

    :cond_0
    const/16 p0, 0x2bc

    :goto_0
    return p0
.end method

.method public static b(Landroid/content/Context;Lcom/iflytek/cloud/a/f/a;)Ljava/lang/String;
    .locals 5

    .line 26
    invoke-virtual {p1}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/b/a;->b()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    .line 27
    invoke-static {p0, v0}, Lcom/iflytek/cloud/b/c;->b(Landroid/content/Context;Lcom/iflytek/cloud/b/a;)V

    .line 28
    invoke-static {p0, v0}, Lcom/iflytek/cloud/b/c;->a(Landroid/content/Context;Lcom/iflytek/cloud/b/a;)V

    const-string p0, "ssm"

    const-string v1, "1"

    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, p0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 30
    invoke-virtual {p1}, Lcom/iflytek/cloud/a/f/a;->getSampleRate()I

    move-result p0

    .line 31
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "auf=audio/L16;rate"

    invoke-virtual {v0, v4, v3, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "aue"

    const/16 v4, 0x3e80

    if-ne p0, v4, :cond_0

    const-string p0, "speex-wb"

    .line 32
    invoke-virtual {v0, v3, p0, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string p0, "speex"

    .line 33
    invoke-virtual {v0, v3, p0, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 34
    :goto_0
    invoke-virtual {p1}, Lcom/iflytek/cloud/a/f/a;->getTextEncoding()Ljava/lang/String;

    move-result-object p0

    const-string p1, "text_encoding"

    invoke-virtual {v0, p1, p0, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p0, "plev"

    .line 35
    invoke-virtual {v0, p0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p0, "accent"

    const-string p1, "mandarin"

    .line 36
    invoke-virtual {v0, p0, p1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p0, "domain"

    const-string p1, "ise"

    .line 37
    invoke-virtual {v0, p0, p1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p0, "subject"

    .line 38
    invoke-virtual {v0, p0, p1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p0, "result_type"

    const-string p1, "xml"

    .line 39
    invoke-virtual {v0, p0, p1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p0, "vad_bos"

    const-string p1, "5000"

    .line 40
    invoke-virtual {v0, p0, p1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p0, "vad_eos"

    const-string p1, "1800"

    .line 41
    invoke-virtual {v0, p0, p1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p0, "vad_speech_timeout"

    const-string p1, "2147483647"

    .line 42
    invoke-virtual {v0, p0, p1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    sget-object p0, Lcom/iflytek/cloud/b/b;->c:[[Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/iflytek/cloud/b/a;->a([[Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Lcom/iflytek/cloud/b/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/cloud/a/f/a;)Ljava/lang/String;
    .locals 2

    .line 13
    invoke-virtual {p2}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object p1

    .line 14
    invoke-static {p0, p1}, Lcom/iflytek/cloud/b/c;->b(Landroid/content/Context;Lcom/iflytek/cloud/b/a;)V

    const-string p0, "result_type"

    const-string v0, "json"

    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, p0, v0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p0, "rse"

    const-string v0, "gb2312"

    .line 16
    invoke-virtual {p1, p0, v0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 17
    invoke-virtual {p2}, Lcom/iflytek/cloud/a/f/a;->getTextEncoding()Ljava/lang/String;

    move-result-object p0

    const-string v0, "text_encoding"

    invoke-virtual {p1, v0, p0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p0, "vad_enable"

    const-string v0, "false"

    .line 18
    invoke-virtual {p1, p0, v0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p0, "ssm"

    const-string v0, "1"

    .line 19
    invoke-virtual {p1, p0, v0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p0, "sub"

    const-string v0, "ist"

    .line 20
    invoke-virtual {p1, p0, v0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 21
    invoke-virtual {p2}, Lcom/iflytek/cloud/a/f/a;->getSampleRate()I

    move-result p0

    .line 22
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "auf=audio/L16;rate"

    invoke-virtual {p1, v0, p2, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p2, "aue"

    const/16 v0, 0x3e80

    if-ne p0, v0, :cond_0

    const-string p0, "speex-wb"

    .line 23
    invoke-virtual {p1, p2, p0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string p0, "speex"

    .line 24
    invoke-virtual {p1, p2, p0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 25
    :goto_0
    invoke-virtual {p1}, Lcom/iflytek/cloud/b/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lcom/iflytek/cloud/b/a;)V
    .locals 4

    const-string v0, "net_type"

    .line 1
    invoke-virtual {p1, v0}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/iflytek/cloud/b/c;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    sget-object p0, Lcom/iflytek/cloud/b/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, p0, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string v1, "none"

    if-nez p0, :cond_1

    .line 4
    invoke-virtual {p1, v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v3, "connectivity"

    .line 5
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 6
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-nez p0, :cond_2

    .line 7
    invoke-virtual {p1, v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/j;->b(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/j;->a(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "net_subtype"

    .line 10
    :try_start_1
    invoke-static {p0}, Lcom/iflytek/cloud/b/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 11
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "appendNetProxyParam exceptoin: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogI(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static b(Lcom/iflytek/cloud/b/a;)V
    .locals 8

    .line 45
    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "ver_tts"

    .line 46
    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/SpeechUtility;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "speed_increase"

    .line 47
    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "speed"

    const/16 v3, 0x32

    .line 48
    invoke-virtual {p0, v2, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v4

    const-string v5, ""

    const/16 v6, 0x64

    if-gt v4, v6, :cond_1

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "1"

    .line 50
    invoke-virtual {p0, v1, v0}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-ge v6, v4, :cond_3

    const/16 v7, 0x96

    if-gt v4, v7, :cond_3

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "5.5."

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "2"

    .line 53
    invoke-virtual {p0, v1, v0}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-ge v6, v4, :cond_4

    const/16 v0, 0xc8

    if-gt v4, v0, :cond_4

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v4, v6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "4"

    .line 55
    invoke-virtual {p0, v1, v0}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/iflytek/cloud/a/f/a;)Ljava/lang/String;
    .locals 3

    .line 12
    invoke-virtual {p1}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/b/a;->b()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    .line 13
    invoke-static {p0, v0}, Lcom/iflytek/cloud/b/c;->b(Landroid/content/Context;Lcom/iflytek/cloud/b/a;)V

    const-string p0, "result_type"

    const-string v1, "json"

    .line 14
    invoke-virtual {v0, p0, v1}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/iflytek/cloud/a/f/a;->getResultEncoding()Ljava/lang/String;

    move-result-object p0

    const-string v1, "rse"

    invoke-virtual {v0, v1, p0}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lcom/iflytek/cloud/a/f/a;->getTextEncoding()Ljava/lang/String;

    move-result-object p0

    const-string v1, "text_encoding"

    invoke-virtual {v0, v1, p0}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "ssm"

    const-string v1, "1"

    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, p0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p0, "subject"

    const-string v1, "ivp"

    .line 18
    invoke-virtual {v0, p0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 19
    invoke-virtual {p1}, Lcom/iflytek/cloud/a/f/a;->getSampleRate()I

    move-result p0

    .line 20
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "auf=audio/L16;rate"

    invoke-virtual {v0, v1, p1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, "aue"

    const/16 v1, 0x3e80

    if-ne p0, v1, :cond_0

    const-string p0, "speex-wb;10"

    .line 21
    invoke-virtual {v0, p1, p0, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string p0, "speex"

    .line 22
    invoke-virtual {v0, p1, p0, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    const-string p0, "vad_bos"

    const-string p1, "3000"

    .line 23
    invoke-virtual {v0, p0, p1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p0, "vad_eos"

    const-string p1, "700"

    .line 24
    invoke-virtual {v0, p0, p1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 25
    sget-object p0, Lcom/iflytek/cloud/b/b;->c:[[Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/iflytek/cloud/b/a;->a([[Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Lcom/iflytek/cloud/b/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Lcom/iflytek/cloud/b/a;)Ljava/lang/String;
    .locals 2

    .line 27
    invoke-virtual {p1}, Lcom/iflytek/cloud/b/a;->b()Lcom/iflytek/cloud/b/a;

    move-result-object p1

    .line 28
    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    const-string v1, "appid"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/SpeechUtility;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {p1, v1, v0}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/a;->f(Landroid/content/Context;)Lcom/iflytek/cloud/b/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iflytek/cloud/b/a;->a(Lcom/iflytek/cloud/b/a;)V

    .line 31
    invoke-static {p0}, Lcom/iflytek/cloud/b/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "dvc"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 32
    sget-object p0, Lcom/iflytek/cloud/b/b;->c:[[Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/iflytek/cloud/b/a;->a([[Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/iflytek/cloud/b/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/cloud/a/f/a;)Ljava/lang/String;
    .locals 5

    const-string v0, "oneshot"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object p1

    const-string v0, "cloud_grammar"

    invoke-virtual {p1, v0}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/iflytek/cloud/b/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/cloud/a/f/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iflytek/cloud/b/a;->b()Lcom/iflytek/cloud/b/a;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "ivw_net_mode"

    .line 4
    invoke-virtual {p1, v0, p2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result p2

    const-string v1, "0"

    const/4 v2, 0x1

    if-nez p2, :cond_1

    .line 5
    invoke-virtual {p1, v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    const-string v4, "1"

    if-eq v3, p2, :cond_4

    if-ne v2, p2, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/j;->b(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 7
    invoke-virtual {p1, v0, v4, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {p1, v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 9
    :cond_4
    :goto_0
    invoke-virtual {p1, v0, v4, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 10
    :goto_1
    sget-object p0, Lcom/iflytek/cloud/b/b;->c:[[Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/iflytek/cloud/b/a;->a([[Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/iflytek/cloud/b/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;Lcom/iflytek/cloud/a/f/a;)Ljava/lang/String;
    .locals 3

    .line 22
    invoke-virtual {p1}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/b/a;->b()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    .line 23
    invoke-static {p0, v0}, Lcom/iflytek/cloud/b/c;->b(Landroid/content/Context;Lcom/iflytek/cloud/b/a;)V

    .line 24
    invoke-static {p0, v0}, Lcom/iflytek/cloud/b/c;->a(Landroid/content/Context;Lcom/iflytek/cloud/b/a;)V

    const-string p0, "ssm"

    const-string v1, "1"

    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, p0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p0, "result_type"

    const-string v1, "json"

    .line 26
    invoke-virtual {v0, p0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 27
    invoke-virtual {p1}, Lcom/iflytek/cloud/a/f/a;->getResultEncoding()Ljava/lang/String;

    move-result-object p0

    const-string v1, "rse"

    invoke-virtual {v0, v1, p0, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 28
    invoke-virtual {p1}, Lcom/iflytek/cloud/a/f/a;->getTextEncoding()Ljava/lang/String;

    move-result-object p0

    const-string p1, "text_encoding"

    invoke-virtual {v0, p1, p0, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 29
    sget-object p0, Lcom/iflytek/cloud/b/b;->c:[[Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/iflytek/cloud/b/a;->a([[Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Lcom/iflytek/cloud/b/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;Lcom/iflytek/cloud/b/a;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/iflytek/cloud/b/a;->b()Lcom/iflytek/cloud/b/a;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lcom/iflytek/cloud/b/c;->a(Landroid/content/Context;Lcom/iflytek/cloud/b/a;)V

    .line 3
    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "appid"

    .line 4
    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/SpeechUtility;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v1, v0}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/a;->f(Landroid/content/Context;)Lcom/iflytek/cloud/b/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iflytek/cloud/b/a;->a(Lcom/iflytek/cloud/b/a;)V

    .line 7
    invoke-static {p0}, Lcom/iflytek/cloud/b/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "dvc"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p0, "aue"

    const-string v0, "raw"

    .line 8
    invoke-virtual {p1, p0, v0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    sget-object p0, Lcom/iflytek/cloud/b/b;->c:[[Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/iflytek/cloud/b/a;->a([[Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/iflytek/cloud/b/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/cloud/a/f/a;)Ljava/lang/String;
    .locals 1

    .line 11
    invoke-virtual {p2}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iflytek/cloud/b/a;->b()Lcom/iflytek/cloud/b/a;

    move-result-object p1

    .line 12
    invoke-static {p0, p1}, Lcom/iflytek/cloud/b/c;->b(Landroid/content/Context;Lcom/iflytek/cloud/b/a;)V

    const-string p0, "sub"

    const-string p2, "mfv"

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, p0, p2, v0}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p0, "prot_ver"

    const-string p2, "50"

    .line 14
    invoke-virtual {p1, p0, p2, v0}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p0, "mver"

    const-string p2, "2.0"

    .line 15
    invoke-virtual {p1, p0, p2, v0}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p0, "sst"

    .line 16
    invoke-virtual {p1, p0}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "verify"

    .line 17
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string p2, "scene_mode"

    if-eqz p0, :cond_0

    const-string p0, "vfy"

    .line 18
    invoke-virtual {p1, p2, p0, v0}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string p0, "gen"

    .line 19
    invoke-virtual {p1, p2, p0, v0}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 20
    :goto_0
    sget-object p0, Lcom/iflytek/cloud/b/b;->c:[[Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/iflytek/cloud/b/a;->a([[Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lcom/iflytek/cloud/b/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;Lcom/iflytek/cloud/a/f/a;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/b/a;->b()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lcom/iflytek/cloud/b/c;->b(Landroid/content/Context;Lcom/iflytek/cloud/b/a;)V

    .line 3
    invoke-static {p0, v0}, Lcom/iflytek/cloud/b/c;->a(Landroid/content/Context;Lcom/iflytek/cloud/b/a;)V

    const-string p0, "ssm"

    const-string v1, "1"

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, p0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5
    invoke-virtual {p1}, Lcom/iflytek/cloud/a/f/a;->getSampleRate()I

    move-result p0

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "auf=audio/L16;rate"

    invoke-virtual {v0, v3, v1}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "aue"

    const/16 v3, 0x3e80

    if-ne p0, v3, :cond_0

    const-string p0, "speex-wb"

    .line 7
    invoke-virtual {v0, v1, p0, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string p0, "speex"

    .line 8
    invoke-virtual {v0, v1, p0, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    :goto_0
    sget-object p0, Lcom/iflytek/cloud/b/c;->a:Ljava/lang/String;

    const-string v1, "voice_name"

    invoke-virtual {v0, v1, p0}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x1

    .line 10
    invoke-virtual {v0, v1, p0, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 11
    invoke-virtual {p1}, Lcom/iflytek/cloud/a/f/a;->getTextEncoding()Ljava/lang/String;

    move-result-object p0

    const-string p1, "text_encoding"

    invoke-virtual {v0, p1, p0, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 12
    invoke-static {v0}, Lcom/iflytek/cloud/b/c;->b(Lcom/iflytek/cloud/b/a;)V

    .line 13
    sget-object p0, Lcom/iflytek/cloud/b/b;->c:[[Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/iflytek/cloud/b/a;->a([[Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Lcom/iflytek/cloud/b/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
