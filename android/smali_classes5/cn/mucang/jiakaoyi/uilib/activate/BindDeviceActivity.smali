.class public final Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$a;,
        Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\u0004\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0002J\u0008\u0010\u0010\u001a\u00020\u000fH\u0002J\u0008\u0010\u0011\u001a\u00020\u000fH\u0002J\u0012\u0010\u0012\u001a\u00020\u000f2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014J\u0008\u0010\u0015\u001a\u00020\u000fH\u0014J\u0010\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\rH\u0002J\u0008\u0010\u0018\u001a\u00020\u000fH\u0002R\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;",
        "()V",
        "rollCheckActiveStateTask",
        "cn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$rollCheckActiveStateTask$1",
        "Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$rollCheckActiveStateTask$1;",
        "startTime",
        "",
        "viewBinding",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;",
        "viewModel",
        "Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;",
        "getStatName",
        "",
        "initViewModel",
        "",
        "initViews",
        "loadBindInfo",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "showError",
        "error",
        "startRollTask",
        "Companion",
        "uilib_release"
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
.field public static final e:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$a;


# instance fields
.field private a:J

.field private b:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;

.field private c:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;

.field private final d:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->e:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$c;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$c;-><init>(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->d:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$c;

    return-void
.end method

.method private final A(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {v0}, Lcn/mucang/android/core/widget/StateLayout;->getErrorView()Landroid/view/View;

    move-result-object v0

    sget v3, Lcom/mucang/android/jiakaoyi/uilib/R$id;->msg:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p1}, Lcn/mucang/android/core/widget/StateLayout;->e()V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private final B()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->a:J

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->d:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$c;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->d:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$c;

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static final synthetic g(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->a:J

    return-wide v0
.end method

.method public static final synthetic h(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;)Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;

    return-object p0
.end method

.method public static final synthetic i(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;)Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->c:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;

    return-object p0
.end method

.method private final initViewModel()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/lifecycle/m0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class v1, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object v0

    const-string v1, "ViewModelProvider(this).\u2026iceViewModel::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->c:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;

    const/4 v1, 0x0

    const-string v2, "viewModel"

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->b()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/activate/b;

    invoke-direct {v3, p0}, Lcn/mucang/jiakaoyi/uilib/activate/b;-><init>(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;)V

    invoke-virtual {v0, p0, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->c:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;->i()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/activate/e;

    invoke-direct {v3, p0}, Lcn/mucang/jiakaoyi/uilib/activate/e;-><init>(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;)V

    invoke-virtual {v0, p0, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->c:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;->j()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/activate/f;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/activate/f;-><init>(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public static final synthetic j(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->a:J

    return-void
.end method

.method public static final synthetic k(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->A(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic l(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->B()V

    return-void
.end method

.method private static final m(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "viewBinding"

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p1}, Lcn/mucang/android/core/widget/StateLayout;->c()V

    .line 3
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->B()V

    goto :goto_1

    .line 4
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 5
    :cond_3
    invoke-static {}, Lcn/mucang/android/core/utils/x;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->A(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p1, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u91cd\u8bd5"

    .line 7
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->A(Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_5
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;

    if-eqz p0, :cond_6

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->f()V

    :goto_1
    return-void

    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2
.end method

.method private static final n(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceInfo;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceInfo;->getData()Ljava/lang/String;

    move-result-object v1

    const/4 p1, 0x0

    if-nez v1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ","

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/l;->p0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    move-object v0, p1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 4
    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;->iconQr:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_2
    const-string p0, "viewBinding"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p1
.end method

.method private static final o(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;Ljava/lang/Integer;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity;->l:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity$a;

    invoke-virtual {p1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity$a;->b(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v0, 0x2

    if-nez p1, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 5
    sget-object p1, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialClient;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$initViewModel$3$1;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$initViewModel$3$1;-><init>(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;)V

    invoke-virtual {p1, p0, v0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->x(Landroid/app/Activity;Lkotlin/jvm/b/a;)V

    goto :goto_2

    .line 6
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_2
    return-void
.end method

.method private final p()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;

    const-string v1, "viewBinding"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v3, "\u8bbe\u5907\u7ed1\u5b9a"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/activate/c;

    invoke-direct {v3, p0}, Lcn/mucang/jiakaoyi/uilib/activate/c;-><init>(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    new-instance v10, Lcn/mucang/android/jiakaoyi/framework/base/e;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    new-instance v7, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$initViews$2;

    invoke-direct {v7, p0}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$initViews$2;-><init>(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcn/mucang/android/jiakaoyi/framework/base/e;-><init>(IJLkotlin/jvm/b/l;ILkotlin/jvm/internal/o;)V

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;->refresh:Landroid/widget/TextView;

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/activate/a;

    invoke-direct {v3, p0}, Lcn/mucang/jiakaoyi/uilib/activate/a;-><init>(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/mucang/android/jiakaoyi/uilib/R$layout;->layout_bind_error:I

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 6
    sget v3, Lcom/mucang/android/jiakaoyi/uilib/R$id;->retry:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/activate/d;

    invoke-direct {v4, p0}, Lcn/mucang/jiakaoyi/uilib/activate/d;-><init>(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;

    if-eqz v3, :cond_0

    iget-object v1, v3, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {v1, v0}, Lcn/mucang/android/core/widget/StateLayout;->setErrorView(Landroid/view/View;)V

    return-void

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 8
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 9
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 10
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 11
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2
.end method

.method private static final q(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final r(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->z()V

    return-void
.end method

.method private static final s(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->z()V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->r(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->m(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->q(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->s(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->n(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceInfo;)V

    return-void
.end method

.method public static synthetic y(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->o(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;Ljava/lang/Integer;)V

    return-void
.end method

.method private final z()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bind_device_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 3
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;

    const-string v3, "viewBinding"

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v4, "\u7279\u6b8a\u8bbe\u5907\u7ed1\u5b9a"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;->tip:Landroid/widget/TextView;

    const-string v4, "\u8bf7\u626b\u7801\u8fdb\u884c\u6fc0\u6d3b"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;->refresh:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1;

    invoke-direct {v6, v0, p0, v2}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$loadBindInfo$1;-><init>(Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;Lkotlin/coroutines/c;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 8
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 9
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 10
    :cond_3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->c:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;->k()V

    :goto_0
    return-void

    :cond_4
    const-string v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u7ed1\u5b9a\u8bbe\u5907\u53f7"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBindDeviceBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    .line 4
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->p()V

    .line 5
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->initViewModel()V

    .line 6
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->z()V

    .line 7
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/s/j;->a:Lcn/mucang/jiakaoyi/uilib/s/j;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/s/j;->a()V

    return-void

    :cond_0
    const-string p1, "viewBinding"

    .line 8
    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->d:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$c;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    return-void
.end method
