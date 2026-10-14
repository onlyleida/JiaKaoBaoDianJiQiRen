.class public final Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/tts/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$ReportRunnable$run$1",
        "Lcn/mucang/android/jiakaoyi/framework/tts/TtsListener;",
        "onIntercept",
        "",
        "onSpeakEnd",
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
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;

.field final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$a;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$a;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$a$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$a$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIntercept()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$a$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;->b(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$a$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;->c(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$a$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;->d(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;)Lcn/mucang/android/jiakaoyi/teachingk2/video/e;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    .line 2
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$a$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$a;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$a$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$a$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;->a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onSpeakBegin()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/f$a;->c(Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    return-void
.end method

.method public onSpeakEnd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$a$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;->b(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$a$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;->c(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$a$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;->d(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;)Lcn/mucang/android/jiakaoyi/teachingk2/video/e;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    .line 2
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$a$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$a;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$a$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$a$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;->a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onSpeakPaused()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/f$a;->e(Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    return-void
.end method

.method public onSpeakResumed()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/f$a;->g(Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    return-void
.end method
