.class public final Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;",
        ">;",
        "Lcn/mucang/android/jiakaoyi/signal/c/f/a;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \'2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\'B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00062\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J.\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00062\u000e\u0008\u0001\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00062\u000e\u0008\u0001\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0006H\u0002J\u0008\u0010\u001b\u001a\u00020\nH\u0016J\u0008\u0010\u001c\u001a\u00020\u001dH\u0015J\u0008\u0010\u001e\u001a\u00020\u001dH\u0014J\u0010\u0010\u001f\u001a\u00020\u001d2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010 \u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\"H\u0016J\u001e\u0010#\u001a\u00020\u001d2\u0006\u0010$\u001a\u00020%2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0006H\u0003R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\t8\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u00100\u000fj\u0008\u0012\u0004\u0012\u00020\u0010`\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "()V",
        "aiCheck",
        "",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;",
        "aiVersionCallback",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "",
        "coverCount",
        "",
        "coverTotal",
        "data",
        "Ljava/util/ArrayList;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalItem;",
        "Lkotlin/collections/ArrayList;",
        "time",
        "",
        "buildItems",
        "aiData",
        "Lcn/mucang/android/jiakaoyi/signal/ai/AIData;",
        "checkDiffIndexes",
        "oldList",
        "",
        "newList",
        "getStatName",
        "init",
        "",
        "onDestroy",
        "onReceiveAISignal",
        "onSignalChanged",
        "signalGetter",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "updateRcvWithDiffItems",
        "adapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "it",
        "Companion",
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


# static fields
.field public static final h:Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity$a;


# instance fields
.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/k;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:J

.field private final g:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->h:Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/k;

    const-string v2, "\u9762\u90e8\u8868\u60c5:"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/k;

    const-string v2, "\u5934\u90e8\u52a8\u4f5c:"

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/k;

    const-string v2, "\u65b9\u5411\u76d8\u52a8\u4f5c:"

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/k;

    const-string v2, "\u5f00\u95e8\u52a8\u4f5c:"

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/k;

    const-string v2, "\u5176\u4ed6\u52a8\u4f5c:"

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    .line 9
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->b:Ljava/util/ArrayList;

    const/4 v0, 0x6

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    .line 10
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->M_70001:Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 11
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->M_70002:Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 12
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->M_70003:Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 13
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->M_70004:Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 14
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->M_70005:Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 15
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->M_70006:Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 16
    invoke-static {v0}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->c:Ljava/util/List;

    .line 17
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/e;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/e;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->g:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method

.method public static synthetic A(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->q(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic B(Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->r(Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic C(Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->m(Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;)V

    return-void
.end method

.method private final D(Lcn/mucang/android/jiakaoyi/signal/ai/a;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->k(Lcn/mucang/android/jiakaoyi/signal/ai/a;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;->dataRcv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.drakeet.multitype.MultiTypeAdapter"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/drakeet/multitype/f;

    invoke-direct {p0, v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->E(Lcom/drakeet/multitype/f;Ljava/util/List;)V

    return-void
.end method

.method private final E(Lcom/drakeet/multitype/f;Ljava/util/List;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/drakeet/multitype/f;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->l(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_4

    :goto_0
    add-int/lit8 v3, v1, 0x1

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 5
    invoke-virtual {p1}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 6
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 7
    instance-of v6, v4, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/k;

    if-eqz v6, :cond_1

    instance-of v6, v5, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/k;

    if-eqz v6, :cond_1

    .line 8
    check-cast v4, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/k;

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/k;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/k;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/k;->c(Ljava/lang/String;)V

    .line 9
    :cond_1
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    if-le v3, v2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    goto :goto_0

    .line 10
    :cond_3
    :goto_1
    invoke-virtual {p1, p2}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    :goto_2
    return-void
.end method

.method private static final j(Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;->tvVersion:Landroid/widget/TextView;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/ai/h/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "V1-"

    goto :goto_0

    :cond_0
    const-string v0, "V2-"

    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final k(Lcn/mucang/android/jiakaoyi/signal/ai/a;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/ai/a;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/k;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/k;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/ai/a;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "aiData.emotionDesc"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/k;->c(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/k;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/ai/a;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "aiData.headPoseDesc"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/k;->c(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/k;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/ai/a;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, "aiData.steerWheelAction"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/k;->c(Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/k;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/ai/a;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "aiData.openDoorAction"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/k;->c(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/k;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/ai/a;->b()Ljava/lang/String;

    move-result-object p1

    const-string v2, "aiData.actionDesc"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/k;->c(Ljava/lang/String;)V

    return-object v0
.end method

.method private final l(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 4
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 5
    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-lt v3, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private static final m(Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;->tvCoverType:Landroid/widget/TextView;

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;->noCover()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    const-string v1, "\u6b63\u5e38"

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;->isMask()Z

    move-result v1

    if-ne v2, v1, :cond_1

    const-string v1, "\u53e3\u7f69"

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;->isSunglasses()Z

    move-result v1

    if-ne v2, v1, :cond_2

    const-string v1, "\u58a8\u955c"

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;->isSideFace()Z

    move-result v1

    if-ne v2, v1, :cond_3

    const-string v1, "\u4fa7\u8138"

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;->isOtherCover()Z

    move-result v1

    if-ne v2, v1, :cond_4

    const-string v1, "\u5e3d\u5b50\u6216\u624b\u906e"

    goto :goto_0

    :cond_4
    const-string v1, "\u65e0"

    :goto_0
    const-string v3, "\u906e\u6321\u72b6\u6001\uff1a"

    .line 7
    invoke-static {v3, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;->cbStatistic:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;->cbMask:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;->isMask()Z

    move-result v0

    if-nez v0, :cond_7

    .line 10
    :cond_5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;->cbSunglasses:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;->isSunglasses()Z

    move-result v0

    if-nez v0, :cond_7

    .line 11
    :cond_6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;->cbElse:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;->isOtherCover()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 12
    :cond_7
    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->e:I

    add-int/2addr p1, v2

    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->e:I

    .line 13
    :cond_8
    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->d:I

    add-int/2addr p1, v2

    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->d:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 14
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->e:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {p1, v2}, Lkotlin/a0/d;->b(II)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    const/16 p1, 0x64

    int-to-float p1, p1

    mul-float v1, v1, p1

    .line 15
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;->tvCoverCount:Landroid/widget/TextView;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u603b\u8ba1\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u5e27\uff0c \u906e\u6321\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->e:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\u5e27\uff0c \u5360\u6bd4\uff1a"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x25

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method private static final n(Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final o(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/n;->p()V

    return-void
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->g:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/n;->i(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method private static final q(Landroid/widget/CompoundButton;Z)V
    .locals 8

    if-eqz p1, :cond_0

    .line 1
    new-instance p0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;

    const-class v1, Lcn/mucang/android/jiakaoyi/signal/ai/b;

    const/4 v2, 0x3

    const-wide/16 v3, 0x3e8

    .line 2
    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity$init$4$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity$init$4$1;

    sget-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity$init$4$2;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity$init$4$2;

    sget-object v7, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity$init$4$3;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity$init$4$3;

    move-object v0, p0

    .line 3
    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;-><init>(Ljava/lang/Class;IJLkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/l;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->i()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object p0

    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->AiEnableFaceCover:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->Q(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;[B)Z

    :goto_0
    return-void
.end method

.method private static final r(Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;Landroid/widget/CompoundButton;Z)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->e:I

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->d:I

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;->tvCoverCount:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u603b\u8ba1\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->d:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u5e27\uff0c \u906e\u6321\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->e:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\u5e27\uff0c \u51c6\u786e\u7387\uff1a-"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private static final s(Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaMsgResult;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaMsgResult;->getMsgDesc()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method private static final t(Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;Lcn/mucang/android/jiakaoyi/signal/ai/b;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;->tvCoverEnable:Landroid/widget/TextView;

    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/signal/ai/b;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "\u662f\u5426\u5f00\u542f\u906e\u6321\u68c0\u6d4b: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-boolean p0, p1, Lcn/mucang/android/jiakaoyi/signal/ai/b;->b:Z

    if-eqz p0, :cond_0

    const-string p0, "\u906e\u6321\u68c0\u6d4b\u5df2\u6253\u5f00"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "\u906e\u6321\u68c0\u6d4b\u5df2\u5173\u95ed"

    .line 4
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic u(Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaMsgResult;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->s(Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaMsgResult;)V

    return-void
.end method

.method public static synthetic v(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->o(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->n(Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->p(Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y(Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->j(Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic z(Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;Lcn/mucang/android/jiakaoyi/signal/ai/b;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->t(Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;Lcn/mucang/android/jiakaoyi/signal/ai/b;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "AI\u8c03\u8bd5"

    return-object v0
.end method

.method protected init()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/q0/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/q0/a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/q0/a;->a()V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;->title:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/c;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;->title:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "AI\u8c03\u8bd5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;->dataRcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 6
    new-instance v0, Lcom/drakeet/multitype/f;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x7

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/j;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/j;-><init>()V

    .line 8
    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/k;

    invoke-virtual {v0, v2, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;->dataRcv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;->dataRcv:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 11
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;->dataRcv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.drakeet.multitype.MultiTypeAdapter"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/drakeet/multitype/f;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 12
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;->btnOtaStart:Landroid/widget/Button;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/b;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;->btnOtaVer:Landroid/widget/Button;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/d;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;->cbEnableCover:Landroid/widget/CheckBox;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/g;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/g;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 15
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;->cbStatistic:Landroid/widget/CheckBox;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/h;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/h;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaMsgResult;

    .line 16
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/a;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/ai/b;

    .line 17
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/f;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/f;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;

    .line 18
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/i;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/i;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 19
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/q0/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/q0/a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/q0/a;->b()V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->AiEnableFaceCover:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v3, v2, v3

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->Q(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;[B)Z

    return-void
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 6

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->a()Lcn/mucang/android/jiakaoyi/signal/ai/a;

    move-result-object v0

    const-string v1, "signalGetter.aiData"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->D(Lcn/mucang/android/jiakaoyi/signal/ai/a;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->c:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ", "

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    .line 4
    invoke-virtual {v2, p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->getCheckInt(Lcn/mucang/android/jiakaoyi/signal/c/e;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->checkPass(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v1, v3}, Lkotlin/text/l;->k0(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "\u6b63\u5e38"

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;->errorTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 10
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->f:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long p1, v2, v4

    if-lez p1, :cond_3

    .line 11
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->f:J

    .line 12
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAiSignalBinding;->communicationTv:Landroid/widget/TextView;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;->AiNet:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->j(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->desc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
