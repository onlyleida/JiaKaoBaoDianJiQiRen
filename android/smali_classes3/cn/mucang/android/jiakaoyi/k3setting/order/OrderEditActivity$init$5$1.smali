.class final Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity$init$5$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity;->u(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Ljava/lang/String;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "voiceCode",
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
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity$init$5$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity$init$5$1;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity$init$5$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity;->k(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity$init$5$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity;->j(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity;)Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity$init$5$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity;

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;-><init>()V

    .line 6
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity;->l(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)V

    :cond_0
    if-eqz p1, :cond_3

    const-string v0, "\u65e0"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity$init$5$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity;->j(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity;)Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/text/l;->j(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->voiceCode:I

    .line 9
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity$init$5$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderEditActivityBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderEditActivityBinding;->tvVoiceNumber:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 10
    :cond_3
    :goto_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity$init$5$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity;->j(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity;)Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    iput v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->voiceCode:I

    .line 11
    :goto_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity$init$5$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderEditActivityBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderEditActivityBinding;->tvVoiceNumber:Landroid/widget/TextView;

    const-string v0, "\u8bf7\u9009\u62e9\u8bed\u97f3\u5305\u6587\u4ef6\u7801"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method
