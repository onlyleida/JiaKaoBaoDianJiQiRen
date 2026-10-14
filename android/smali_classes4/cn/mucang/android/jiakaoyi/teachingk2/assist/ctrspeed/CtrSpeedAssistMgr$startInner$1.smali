.class final Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr$startInner$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->l0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr$startInner$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr$startInner$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->C()Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :goto_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->E()Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    :goto_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->D()Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/n;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/n;->dismiss()V

    .line 5
    :goto_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/n;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v2

    const-string v1, "getCurrentActivity()"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_speed_subsidiary_ing:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "getString(R.string.teachbase_speed_subsidiary_ing)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_app_help_speed_done:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "getString(R.string.teachbase_app_help_speed_done)"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr$startInner$1$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr$startInner$1$1;

    sget-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr$startInner$1$2;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr$startInner$1$2;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/n;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->K(Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/n;)V

    .line 9
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->D()Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/n;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_3
    const/4 v0, 0x1

    .line 10
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->J(Z)V

    .line 11
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/e;->b:Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/e;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr$startInner$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/d;->b(Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;)V

    .line 12
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;->b:Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr$startInner$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/d;->b(Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;)V

    return-void
.end method
