.class public final Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NotifyDataSetChanged"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity$a;,
        Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n*\u0001\u000b\u0008\u0007\u0018\u0000 \'2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\'(B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0008\u0010\u001e\u001a\u00020\u001fH\u0016J\u0008\u0010 \u001a\u00020\u001dH\u0014J\u0008\u0010!\u001a\u00020\u001dH\u0016J\u0008\u0010\"\u001a\u00020\u001dH\u0014J\u0008\u0010#\u001a\u00020\u001dH\u0014J\u0008\u0010$\u001a\u00020\u001dH\u0014J\u0008\u0010%\u001a\u00020\u001dH\u0002J\u0008\u0010&\u001a\u00020\u001dH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;",
        "()V",
        "adapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "engineManager",
        "Lcn/mucang/android/jiakaoyi/engine/init/EngineManager;",
        "examEventCallback",
        "Lcn/mucang/android/jiakaoyi/engine/callback/ExamEventCallback;",
        "examResultCallback",
        "cn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity$examResultCallback$1",
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity$examResultCallback$1;",
        "mapPreviewer",
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepMapPreviewer;",
        "mapRender",
        "Lcn/mucang/android/jiakaoyi/mapcollect/render/MapRender;",
        "presenter",
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTracePresenter;",
        "stateCallback",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "Lcn/mucang/android/jiakaoyi/engine/init/EngineState;",
        "subStep",
        "",
        "subStepEvent",
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;",
        "subStepObservable",
        "Landroidx/lifecycle/Observer;",
        "changeStep",
        "",
        "getStatName",
        "",
        "init",
        "onBackPressed",
        "onDestroy",
        "onPause",
        "onResume",
        "save",
        "showTrace",
        "Companion",
        "TraceStepBinder",
        "TeachingK2_release"
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
.field public static final m:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity$a;


# instance fields
.field private final b:Lcom/drakeet/multitype/f;

.field private c:I

.field private d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/k3;

.field private e:Lcn/mucang/android/jiakaoyi/engine/init/a;

.field private f:Lcn/mucang/android/jiakaoyi/mapcollect/render/g;

.field private g:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/h3;

.field private h:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;

.field private final i:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity$c;

.field private final k:Lcn/mucang/android/jiakaoyi/engine/f/a;

.field private final l:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/engine/init/EngineState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->m:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v6, Lcom/drakeet/multitype/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity$b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;)V

    .line 4
    const-class v1, Ljava/lang/String;

    invoke-virtual {v6, v1, v0}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 5
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    .line 6
    iput-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->b:Lcom/drakeet/multitype/f;

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->c:I

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/v;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/v;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->i:Landroidx/lifecycle/a0;

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity$c;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity$c;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->j:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity$c;

    .line 10
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/w;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/w;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->k:Lcn/mucang/android/jiakaoyi/engine/f/a;

    .line 11
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/x;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/x;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->l:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method

.method public static synthetic A(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;Lcn/mucang/android/jiakaoyi/engine/init/EngineState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->F(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;Lcn/mucang/android/jiakaoyi/engine/init/EngineState;)V

    return-void
.end method

.method private final B()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;->rangeEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/l;->j(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x19

    const/16 v4, 0x19

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v4, v0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;->timeEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/l;->j(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v0, 0x1388

    const/16 v5, 0x1388

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v5, v0

    .line 3
    :goto_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;->select:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect$a;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;->posRangeEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect$a;->b(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;

    move-result-object v7

    .line 5
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->c:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->h(I)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 6
    iget-object v0, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->teachModelId:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_6

    .line 7
    :cond_2
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->copy()Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getTraceVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iput v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->range:I

    .line 9
    :goto_2
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getTraceVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    iput v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->time:I

    .line 10
    :goto_3
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getTraceVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    iput-boolean v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->enableStopCheck:Z

    .line 11
    :goto_4
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getTraceVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    iput-object v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->stopRange:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;

    .line 12
    :goto_5
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/r;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/r;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;)V

    const-string v1, "\u6b63\u5728\u4fdd\u5b58"

    const-string v2, "\u4fdd\u5b58\u5931\u8d25"

    invoke-virtual {v0, v8, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    :goto_6
    const-string v0, "\u8bf7\u5148\u91c7\u96c6\u6807\u51c6\u8f68\u8ff9"

    .line 13
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method private static final C(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;)V
    .locals 7

    const-string v0, "$stopRange"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;-><init>()V

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/h2/b;->v(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)Z

    .line 2
    new-instance p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/q;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/q;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;)V

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final D(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;)V
    .locals 1

    const-string v0, "$stopRange"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getTraceVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->range:I

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getTraceVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iput p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->time:I

    .line 3
    :goto_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getTraceVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    iput-boolean p3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->enableStopCheck:Z

    .line 4
    :goto_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getTraceVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->stopRange:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;

    :goto_3
    const-string p0, "\u66f4\u65b0\u6210\u529f"

    .line 5
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method private final E()V
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->k()Ljava/util/List;

    move-result-object v0

    .line 2
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->c:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    if-nez v0, :cond_0

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->b()Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->e()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    .line 4
    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->c:I

    .line 5
    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;-><init>(II)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;->rangeEt:Landroid/widget/EditText;

    iget v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->range:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;->timeEt:Landroid/widget/EditText;

    iget v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->time:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect$a;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->b()Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->e()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iget v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->c:I

    invoke-virtual {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect$a;->a(II)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;

    move-result-object v1

    const-string v2, "viewBinding.rectCl"

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;->rectCl:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;->select:Landroid/widget/CheckBox;

    iget-boolean v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->enableStopCheck:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 12
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;->posRangeEt:Landroid/widget/EditText;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->stopRange:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;->getRangeDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;->rectCl:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private static final F(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;Lcn/mucang/android/jiakaoyi/engine/init/EngineState;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/init/EngineState;->Initialed:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    if-ne p1, v0, :cond_3

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->e:Lcn/mucang/android/jiakaoyi/engine/init/a;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/init/a;->canStart()Z

    move-result p1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 3
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->e:Lcn/mucang/android/jiakaoyi/engine/init/a;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->start()Z

    :cond_3
    :goto_1
    return-void
.end method

.method private static final G(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->h:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;->getStep()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;->getStep()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->h:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;->getSubStep()I

    move-result v0

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;->getSubStep()I

    move-result v2

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_1
    if-nez v1, :cond_4

    .line 2
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;->getStep()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->zhStepName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\u5207\u5230\u6b65\u9aa4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;->getSubStep()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;->getSubStepName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->h:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;

    :cond_4
    return-void
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->m(I)V

    return-void
.end method

.method public static final synthetic k(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;)Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/k3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/k3;

    return-object p0
.end method

.method public static final synthetic l(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->c:I

    return p0
.end method

.method private final m(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->c:I

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->b:Lcom/drakeet/multitype/f;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->E()V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->g:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/h3;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/h3;->K(I)V

    :goto_0
    return-void
.end method

.method private static final n(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V
    .locals 0

    return-void
.end method

.method private static final o(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->onBackPressed()V

    return-void
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->E()V

    return-void
.end method

.method private static final q(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->B()V

    return-void
.end method

.method private static final r(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;->previewFl:Landroid/widget/FrameLayout;

    const-string p1, "viewBinding.previewFl"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x8

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->p(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->r(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->D(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;)V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->C(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;)V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->o(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->q(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->G(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;)V

    return-void
.end method

.method public static synthetic z(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->n(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u6559\u5b66\u8f68\u8ff9\u91c7\u96c6"

    return-object v0
.end method

.method protected init()V
    .locals 9

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->b()Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "\u6570\u636e\u51fa\u9519"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;->backIv:Landroid/widget/ImageView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/s;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/s;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;->backIv:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->bringToFront()V

    .line 8
    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/render/g;

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;

    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;->map:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    const-string v2, "viewBinding.map"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, v1

    move-object v3, p0

    .line 10
    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/mapcollect/render/g;-><init>(Landroidx/lifecycle/r;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;ZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->f:Lcn/mucang/android/jiakaoyi/mapcollect/render/g;

    .line 11
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    new-instance v1, Lf/a/a/c/a/c/c;

    .line 13
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->j:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity$c;

    .line 14
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->k:Lcn/mucang/android/jiakaoyi/engine/f/a;

    .line 15
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->l:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 16
    invoke-direct {v1, v2, v3, v4}, Lf/a/a/c/a/c/c;-><init>(Lcn/mucang/android/jiakaoyi/engine/f/b;Lcn/mucang/android/jiakaoyi/engine/f/a;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    goto :goto_0

    .line 17
    :cond_1
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/b0;

    .line 18
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->j:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity$c;

    .line 19
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->k:Lcn/mucang/android/jiakaoyi/engine/f/a;

    .line 20
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->l:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 21
    invoke-direct {v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/b0;-><init>(Lcn/mucang/android/jiakaoyi/engine/f/b;Lcn/mucang/android/jiakaoyi/engine/f/a;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 22
    :goto_0
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->e:Lcn/mucang/android/jiakaoyi/engine/init/a;

    .line 23
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/k3;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;->previewMap:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    const-string v3, "viewBinding.previewMap"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/k3;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/k3;

    if-nez v2, :cond_2

    goto :goto_1

    .line 24
    :cond_2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->b()Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->e()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v1

    iget v3, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    .line 25
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->b()Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->f()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 26
    invoke-static/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/k3;->e(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/k3;IILcn/mucang/android/jiakaoyi/framework/h/b;ILjava/lang/Object;)V

    .line 27
    :goto_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->d:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/k3;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->k()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/k3;->l(Ljava/util/List;)V

    .line 28
    :goto_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;->stepRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 29
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;->stepRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->b:Lcom/drakeet/multitype/f;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 30
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->b:Lcom/drakeet/multitype/f;

    .line 31
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->b()Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->e()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    .line 32
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->b()Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;->f()I

    move-result v0

    .line 33
    invoke-static {v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/e0;->f(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 34
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->b:Lcom/drakeet/multitype/f;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 35
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/h3;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity$init$2;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity$init$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;)V

    invoke-direct {v0, p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/h3;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;Lkotlin/jvm/b/l;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->g:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/h3;

    .line 36
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;->cancelTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/o;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/o;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;->saveTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/u;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/u;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;->closeIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/p;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/p;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;

    .line 39
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->i:Landroidx/lifecycle/a0;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 40
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->E()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->g:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/h3;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/h3;->B()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;->previewMap:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->c()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->f:Lcn/mucang/android/jiakaoyi/mapcollect/render/g;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/render/g;->d()V

    .line 4
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->e:Lcn/mucang/android/jiakaoyi/engine/init/a;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->stop()V

    .line 5
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->e:Lcn/mucang/android/jiakaoyi/engine/init/a;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->destroy()V

    .line 6
    :goto_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->f:Lcn/mucang/android/jiakaoyi/mapcollect/render/g;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/render/g;->d()V

    .line 7
    :goto_3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->d()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->e(ZLcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onPause()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->f:Lcn/mucang/android/jiakaoyi/mapcollect/render/g;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/render/g;->k()V

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;->previewMap:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->m()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onResume()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->f:Lcn/mucang/android/jiakaoyi/mapcollect/render/g;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/render/g;->l()V

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectTraceBinding;->previewMap:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->n()V

    return-void
.end method
