.class public final Lcn/mucang/android/jiakaoyi/k3setting/exam/e1$c;
.super Lcn/mucang/android/jiakaoyi/framework/tts/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/exam/e1;->v()V
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
        "cn/mucang/android/jiakaoyi/k3setting/exam/K3ExamCommonLogic$playStartVoice$1",
        "Lcn/mucang/android/jiakaoyi/framework/tts/SimpleTtsListener;",
        "onIntercept",
        "",
        "onSpeakEnd",
        "k3setting_release"
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
.field final synthetic a:Lcn/mucang/android/jiakaoyi/k3setting/exam/e1;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/e1;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/e1$c;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/e1;

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onIntercept()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;->onIntercept()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/e1$c;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/e1;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/e1;->k()Lcn/mucang/android/jiakaoyi/k3setting/exam/e1$a;

    move-result-object v0

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/e1$a;->h()V

    return-void
.end method

.method public onSpeakEnd()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;->onSpeakEnd()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/e1$c;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/e1;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/e1;->k()Lcn/mucang/android/jiakaoyi/k3setting/exam/e1$a;

    move-result-object v0

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/e1$a;->h()V

    return-void
.end method
