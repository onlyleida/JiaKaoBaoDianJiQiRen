.class final Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$init$4$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->s(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Ljava/lang/Boolean;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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
.field final synthetic $startVoice:Ljava/lang/String;

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$init$4$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$init$4$1;->$startVoice:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$init$4$1;->invoke(Z)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 3

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/d/b;->a:Lcn/mucang/android/jiakaoyi/framework/d/b;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$init$4$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/K3RouteStepEditActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$init$4$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->k(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;)Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ";name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$init$4$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->k(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;)Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";alias:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$init$4$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->k(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;)Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->stepAliasName:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";content:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$init$4$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->k(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;)Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->content:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/d/b;->m(Ljava/lang/String;)V

    .line 9
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/tts/g;->a:Lcn/mucang/android/jiakaoyi/framework/tts/g;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$init$4$1;->$startVoice:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->E(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$init$4$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
