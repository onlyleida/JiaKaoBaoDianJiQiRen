.class public final Lcn/mucang/sundial/library/util/ActivityUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\tJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\n\u0010\tJ\u0013\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\r\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\"\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u00140\u00138\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcn/mucang/sundial/library/util/ActivityUtil;",
        "",
        "Landroid/app/Activity;",
        "activity",
        "Lkotlin/v;",
        "push",
        "(Landroid/app/Activity;)V",
        "pop",
        "finishAll",
        "()V",
        "trim",
        "",
        "allActivity",
        "()Ljava/util/List;",
        "",
        "activityCount",
        "()I",
        "topActivity",
        "()Landroid/app/Activity;",
        "",
        "Ljava/lang/ref/WeakReference;",
        "all",
        "Ljava/util/List;",
        "<init>",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcn/mucang/sundial/library/util/ActivityUtil;

.field private static final all:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/library/util/ActivityUtil;

    invoke-direct {v0}, Lcn/mucang/sundial/library/util/ActivityUtil;-><init>()V

    sput-object v0, Lcn/mucang/sundial/library/util/ActivityUtil;->INSTANCE:Lcn/mucang/sundial/library/util/ActivityUtil;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/sundial/library/util/ActivityUtil;->all:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final finishAll()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/sundial/library/util/ActivityUtil;->INSTANCE:Lcn/mucang/sundial/library/util/ActivityUtil;

    invoke-direct {v0}, Lcn/mucang/sundial/library/util/ActivityUtil;->trim()V

    .line 2
    sget-object v0, Lcn/mucang/sundial/library/util/ActivityUtil;->all:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final pop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/sundial/library/util/ActivityUtil;->INSTANCE:Lcn/mucang/sundial/library/util/ActivityUtil;

    invoke-direct {v0}, Lcn/mucang/sundial/library/util/ActivityUtil;->trim()V

    .line 2
    sget-object v0, Lcn/mucang/sundial/library/util/ActivityUtil;->all:Ljava/util/List;

    new-instance v1, Lcn/mucang/sundial/library/util/ActivityUtil$pop$1;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/library/util/ActivityUtil$pop$1;-><init>(Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lkotlin/collections/s;->F(Ljava/util/List;Lkotlin/jvm/b/l;)Z

    return-void
.end method

.method public static final push(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/sundial/library/util/ActivityUtil;->all:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    sget-object p0, Lcn/mucang/sundial/library/util/ActivityUtil;->INSTANCE:Lcn/mucang/sundial/library/util/ActivityUtil;

    invoke-direct {p0}, Lcn/mucang/sundial/library/util/ActivityUtil;->trim()V

    return-void
.end method

.method private final trim()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/sundial/library/util/ActivityUtil;->all:Ljava/util/List;

    sget-object v1, Lcn/mucang/sundial/library/util/ActivityUtil$trim$1;->INSTANCE:Lcn/mucang/sundial/library/util/ActivityUtil$trim$1;

    invoke-static {v0, v1}, Lkotlin/collections/s;->F(Ljava/util/List;Lkotlin/jvm/b/l;)Z

    return-void
.end method


# virtual methods
.method public final activityCount()I
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/library/util/ActivityUtil;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final allActivity()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/util/ActivityUtil;->trim()V

    .line 2
    sget-object v0, Lcn/mucang/sundial/library/util/ActivityUtil;->all:Ljava/util/List;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 7
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final topActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/util/ActivityUtil;->trim()V

    .line 2
    sget-object v0, Lcn/mucang/sundial/library/util/ActivityUtil;->all:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/s;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
