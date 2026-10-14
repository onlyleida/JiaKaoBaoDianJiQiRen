.class final Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$onCreate$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
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
        "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;"
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
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$onCreate$2;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$onCreate$2;->invoke$lambda-0(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;Landroid/view/View;)V

    return-void
.end method

.method private static final invoke$lambda-0(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;Landroid/view/View;)V
    .locals 2

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$it"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->j(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;)Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;

    move-result-object p2

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->h(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {p2, v0, v1, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;->j(JLcn/mucang/jiakaoyi/uilib/model/StepOrderItem;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$onCreate$2;->invoke(Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;)V
    .locals 13

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$onCreate$2;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;

    new-instance v12, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    .line 4
    new-instance v8, Lcn/mucang/android/jiakaoyi/k3setting/order/n;

    invoke-direct {v8, v1, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/n;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;)V

    const-string v3, "\u5220\u9664\u8def\u7ebf\u6307\u4ee4"

    const-string v4, "\u786e\u8ba4\u5220\u9664\u6539\u8def\u7ebf\u6307\u4ee4\u7801\uff0c\u5220\u9664\u540e\u5c06\u4e0d\u53ef\u6062\u590d\uff0c\u4e14\u7ebf\u8def\u4e0a\u7684\u70b9\u4e5f\u968f\u4e4b\u5220\u9664\u3002"

    const-string v5, "\u53d6\u6d88"

    const/4 v6, 0x0

    const-string v7, "\u5220\u9664"

    const/4 v9, 0x0

    const/16 v10, 0x40

    const/4 v11, 0x0

    move-object v2, v12

    .line 5
    invoke-direct/range {v2 .. v11}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZILkotlin/jvm/internal/o;)V

    .line 6
    invoke-direct {v0, v1, v12}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
