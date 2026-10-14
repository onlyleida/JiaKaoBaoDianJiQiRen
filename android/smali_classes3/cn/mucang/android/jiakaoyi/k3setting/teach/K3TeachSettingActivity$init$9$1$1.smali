.class final Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$init$9$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$init$9$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/b/p<",
        "Lkotlinx/coroutines/i0;",
        "Lkotlin/coroutines/c<",
        "-",
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "cn.mucang.android.jiakaoyi.k3setting.teach.K3TeachSettingActivity$init$9$1$1"
    f = "K3TeachSettingActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $modifyData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;


# direct methods
.method constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$init$9$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$init$9$1$1;->$modifyData:Ljava/util/List;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$init$9$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method

.method public static synthetic d(Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$init$9$1$1;->invokeSuspend$lambda-0(Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final invokeSuspend$lambda-0(Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;->l(Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;)Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->t(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void

    :cond_0
    const-string p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/c<",
            "*>;)",
            "Lkotlin/coroutines/c<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$init$9$1$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$init$9$1$1;->$modifyData:Ljava/util/List;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$init$9$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$init$9$1$1;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$init$9$1$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/i0;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$init$9$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$init$9$1$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$init$9$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$init$9$1$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$init$9$1$1;->$modifyData:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$init$9$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;

    .line 5
    new-instance v9, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    const/4 v5, 0x0

    .line 6
    new-instance v7, Lcn/mucang/android/jiakaoyi/k3setting/teach/p;

    invoke-direct {v7, v0}, Lcn/mucang/android/jiakaoyi/k3setting/teach/p;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;)V

    const/4 v8, 0x0

    const-string v2, "\u63d0\u793a"

    const-string v3, "\u53d1\u73b0\u6709\u6570\u636e\u4fee\u6539,\u8bf7\u5148\u4fdd\u5b58"

    const-string v4, "\u53d6\u6d88"

    const-string v6, "\u4fdd\u5b58"

    move-object v1, v9

    .line 7
    invoke-direct/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    .line 8
    invoke-direct {p1, v0, v9}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    .line 9
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$init$9$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "this@K3TeachSettingActivity.supportFragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;->e:Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$init$9$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;->l(Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;)Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->o()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$init$9$1$1$2;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$init$9$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;

    invoke-direct {v2, v3}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$init$9$1$1$2;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;)V

    invoke-virtual {v0, p1, v1, v2}, Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog$a;->a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Lkotlin/jvm/b/a;)Lcn/mucang/android/jiakaoyi/k3setting/teach/AddTeachStepDialog;

    .line 12
    :goto_0
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_1
    const-string p1, "viewModel"

    .line 13
    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
