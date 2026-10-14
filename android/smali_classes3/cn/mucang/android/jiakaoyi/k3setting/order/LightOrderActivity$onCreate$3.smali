.class final Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity$onCreate$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;"
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
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity$onCreate$3;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity$onCreate$3;->invoke$lambda-0(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Landroid/view/View;)V

    return-void
.end method

.method private static final invoke$lambda-0(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Landroid/view/View;)V
    .locals 1

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$it"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->g(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;)Lcom/drakeet/multitype/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    .line 2
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;->h(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;)Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->n(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)V

    goto :goto_0

    :cond_1
    const-string p0, "\u6700\u5c11\u4fdd\u7559\u4e00\u7ec4\u706f\u5149"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity$onCreate$3;->invoke(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)V
    .locals 13

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity$onCreate$3;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;

    .line 4
    new-instance v12, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    .line 5
    new-instance v8, Lcn/mucang/android/jiakaoyi/k3setting/order/s0;

    invoke-direct {v8, v1, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/s0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightOrderActivity;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)V

    const-string v3, "\u5220\u9664\u706f\u5149\u6307\u4ee4"

    const-string v4, "\u786e\u8ba4\u5220\u9664\u8be5\u706f\u5149\u6307\u4ee4\u5417\uff0c\u5220\u9664\u540e\u5c06\u4e0d\u53ef\u6062\u590d\uff0c\u8bf7\u8c28\u614e\u64cd\u4f5c\u3002"

    const-string v5, "\u53d6\u6d88"

    const/4 v6, 0x0

    const-string v7, "\u5220\u9664"

    const/4 v9, 0x0

    const/16 v10, 0x40

    const/4 v11, 0x0

    move-object v2, v12

    .line 6
    invoke-direct/range {v2 .. v11}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZILkotlin/jvm/internal/o;)V

    .line 7
    invoke-direct {v0, v1, v12}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
