.class public final Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\t\u001a\u00020\nH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$ReportRunnable;",
        "Ljava/lang/Runnable;",
        "tip",
        "",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;Ljava/lang/String;)V",
        "getTip",
        "()Ljava/lang/String;",
        "setTip",
        "(Ljava/lang/String;)V",
        "run",
        "",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tip"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$a;->a:Ljava/lang/String;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$a$a;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;

    invoke-direct {v2, v3, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$a$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$a;)V

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->u(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;->FpReport:Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordEvent;->getCode()I

    move-result v0

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/socket/u;->w(I)Z

    return-void
.end method
