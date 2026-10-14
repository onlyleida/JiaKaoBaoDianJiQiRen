.class public final Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$a;,
        Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$DebugModel;,
        Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/DebugBrakeStateBinding;",
        ">;",
        "Lcn/mucang/android/jiakaoyi/signal/c/f/a;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00162\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0003\u0016\u0017\u0018B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0014J\u0008\u0010\u0012\u001a\u00020\u0011H\u0014J\u0010\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0015H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u000b\u001a\u000c\u0012\u0008\u0012\u00060\rR\u00020\u00000\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/DebugBrakeStateBinding;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "()V",
        "adapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "isStart",
        "",
        "lastTime",
        "",
        "list",
        "",
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$DebugModel;",
        "getStatName",
        "",
        "init",
        "",
        "onDestroy",
        "onSignalChanged",
        "signalGetter",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "Companion",
        "DebugBinder",
        "DebugModel",
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
.field public static final f:Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$a;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$DebugModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:Z

.field private final e:Lcom/drakeet/multitype/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity;->f:Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity;->b:Ljava/util/List;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity;->d:Z

    .line 4
    new-instance v0, Lcom/drakeet/multitype/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 5
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$b;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$b;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity;)V

    .line 6
    const-class v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$DebugModel;

    invoke-virtual {v0, v2, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 7
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    .line 8
    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity;->e:Lcom/drakeet/multitype/f;

    return-void
.end method

.method private static final j(Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity;->d:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity;->d:Z

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DebugBrakeStateBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DebugBrakeStateBinding;->action:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "\u6682\u505c"

    goto :goto_0

    :cond_0
    const-string v0, "\u5f00\u59cb"

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity;->d:Z

    if-eqz p1, :cond_1

    .line 4
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    goto :goto_1

    .line 5
    :cond_1
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    :goto_1
    return-void
.end method

.method public static synthetic k(Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity;->j(Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u5239\u8f66\u72b6\u6001\u8c03\u8bd5\u9875\u9762"

    return-object v0
.end method

.method protected init()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/DebugBrakeStateBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/DebugBrakeStateBinding;->dataRcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/DebugBrakeStateBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/DebugBrakeStateBinding;->dataRcv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity;->e:Lcom/drakeet/multitype/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/DebugBrakeStateBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/DebugBrakeStateBinding;->action:Landroid/widget/TextView;

    const-string v1, "\u6682\u505c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/DebugBrakeStateBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/DebugBrakeStateBinding;->action:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/i;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/i;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 5

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$DebugModel;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$DebugModel;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity;->c:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$DebugModel;->setDeltaTime(J)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity;->c:J

    .line 4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    if-eqz p1, :cond_0

    .line 5
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeBoardBrakeState:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$DebugModel;->setValue(Ljava/lang/String;)V

    .line 6
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeModuleBrakeReason:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;->src:Ljava/lang/String;

    const-string v1, "senorInfo.safeModuleBrakeReason.src"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$DebugModel;->setBrakeSrc(Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0x1f4

    if-le p1, v1, :cond_1

    .line 8
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10
    :goto_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity;->e:Lcom/drakeet/multitype/f;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 11
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity;->e:Lcom/drakeet/multitype/f;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
