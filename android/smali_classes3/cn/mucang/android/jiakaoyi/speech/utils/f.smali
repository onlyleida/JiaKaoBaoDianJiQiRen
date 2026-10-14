.class public final Lcn/mucang/android/jiakaoyi/speech/utils/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\t\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/speech/utils/SpeechSDKHelper;",
        "",
        "()V",
        "IFLYTEK_APPID",
        "",
        "initBaiduSDK",
        "",
        "context",
        "Landroid/content/Context;",
        "initIflytekSDK",
        "speech_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcn/mucang/android/jiakaoyi/speech/utils/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/speech/utils/f;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/speech/utils/f;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/speech/utils/f;->a:Lcn/mucang/android/jiakaoyi/speech/utils/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "appid=5f0ea3a7,engine_mode=msc"

    .line 1
    invoke-static {p1, v0}, Lcom/iflytek/cloud/SpeechUtility;->createUtility(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/cloud/SpeechUtility;

    return-void
.end method
