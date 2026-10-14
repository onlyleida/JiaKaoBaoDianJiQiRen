.class public final Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000f\u001a\u00020\u0010J\u0008\u0010\u0011\u001a\u00020\u0010H\u0003J\u0006\u0010\u0012\u001a\u00020\u0010J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0018\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;",
        "",
        "()V",
        "job",
        "Lkotlinx/coroutines/Job;",
        "slop",
        "",
        "viewbinding",
        "Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;",
        "windowManager",
        "Landroid/view/WindowManager;",
        "windowParams",
        "Landroid/view/WindowManager$LayoutParams;",
        "windowX",
        "windowY",
        "hide",
        "",
        "setupView",
        "show",
        "time2str",
        "",
        "value",
        "",
        "updateXY",
        "newX",
        "newY",
        "sundial_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/view/WindowManager$LayoutParams;

.field private f:Landroid/view/WindowManager;

.field private g:Lkotlinx/coroutines/t1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;)Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->a:Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;

    return-object p0
.end method

.method public static final synthetic b(Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->c:I

    return p0
.end method

.method public static final synthetic c(Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->d:I

    return p0
.end method

.method public static final synthetic d(Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;J)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->m(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->n(II)V

    return-void
.end method

.method public static synthetic g(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->j(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->k(Landroid/view/View;)V

    return-void
.end method

.method private final i()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->g:Lkotlinx/coroutines/t1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/t1;->isActive()Z

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-eqz v1, :cond_3

    .line 2
    iget-object v1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->g:Lkotlinx/coroutines/t1;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v1, v0, v2, v0}, Lkotlinx/coroutines/t1$a;->a(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    :cond_3
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$setupView$1;

    invoke-direct {v5, p0, v0}, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$setupView$1;-><init>(Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;Lkotlin/coroutines/c;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->g:Lkotlinx/coroutines/t1;

    .line 4
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->a:Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;

    if-nez v0, :cond_4

    goto :goto_2

    .line 5
    :cond_4
    iget-object v1, v0, Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;->llDetail:Landroid/widget/LinearLayout;

    sget-object v2, Lcn/mucang/jiakaoyi/sundial/client/l;->a:Lcn/mucang/jiakaoyi/sundial/client/l;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v1, v0, Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;->tvLogout:Landroid/widget/TextView;

    sget-object v2, Lcn/mucang/jiakaoyi/sundial/client/m;->a:Lcn/mucang/jiakaoyi/sundial/client/m;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;->getRoot()Lcn/mucang/jiakaoyi/sundial/client/view/DraggableView;

    move-result-object v0

    const-string v1, "root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v1, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$b;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$b;-><init>(Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 9
    :goto_2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->a:Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    iget-object v0, v0, Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;->dragView:Lcn/mucang/jiakaoyi/sundial/client/view/DraggableView;

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance v1, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$a;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$a;-><init>(Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;)V

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/sundial/client/view/DraggableView;->setDragListener(Lcn/mucang/jiakaoyi/sundial/client/view/DraggableView$a;)V

    :goto_3
    return-void
.end method

.method private static final j(Landroid/view/View;)V
    .locals 0

    .line 1
    sget-object p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialClient;

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->G()V

    return-void
.end method

.method private static final k(Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialClient;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "getCurrentActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$setupView$2$2$1;->INSTANCE:Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$setupView$2$2$1;

    sget-object v2, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$setupView$2$2$2;->INSTANCE:Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow$setupView$2$2$2;

    invoke-virtual {p0, v0, v1, v2}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->z(Landroid/app/Activity;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method private final m(J)Ljava/lang/String;
    .locals 9

    const/16 v0, 0x3e8

    int-to-long v0, v0

    .line 1
    div-long/2addr p1, v0

    const/16 v0, 0xe10

    int-to-long v0, v0

    .line 2
    div-long v2, p1, v0

    const-string v4, "0"

    const-wide/16 v5, 0xa

    cmp-long v7, v2, v5

    if-gez v7, :cond_0

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 5
    :goto_0
    rem-long/2addr p1, v0

    const/16 v0, 0x3c

    int-to-long v0, v0

    .line 6
    rem-long v7, p1, v0

    cmp-long v3, v7, v5

    if-gez v3, :cond_1

    .line 7
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v4, v3}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 9
    :goto_1
    div-long/2addr p1, v0

    cmp-long v0, p1, v5

    if-gez v0, :cond_2

    .line 10
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v4, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 11
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    :goto_2
    const-string p2, "00"

    .line 12
    invoke-static {v2, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/16 v0, 0x3a

    if-eqz p2, :cond_3

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 14
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method private final n(II)V
    .locals 1

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->c:I

    .line 2
    iput p2, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->d:I

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->e:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 5
    :goto_1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->a:Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;->getRoot()Lcn/mucang/jiakaoyi/sundial/client/view/DraggableView;

    move-result-object p1

    .line 6
    :goto_2
    iget-object p2, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->f:Landroid/view/WindowManager;

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p2, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->g:Lkotlinx/coroutines/t1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/t1;->isActive()Z

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->g:Lkotlinx/coroutines/t1;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->a(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    :cond_3
    :goto_1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->a:Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;->getRoot()Lcn/mucang/jiakaoyi/sundial/client/view/DraggableView;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_2

    .line 4
    :cond_5
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5
    iget-object v1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->f:Landroid/view/WindowManager;

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public final l()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->a:Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->b:I

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->f:Landroid/view/WindowManager;

    .line 4
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->e:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x28

    .line 6
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 7
    :goto_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_3

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/16 v3, 0x7f6

    .line 8
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_2

    :cond_3
    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/16 v3, 0x7d3

    .line 9
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    :goto_2
    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    const v3, 0x800033

    .line 10
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_3
    if-nez v0, :cond_6

    goto :goto_4

    .line 11
    :cond_6
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_4
    if-nez v0, :cond_7

    goto :goto_5

    .line 12
    :cond_7
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 13
    :goto_5
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->a:Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;

    const/16 v2, 0xa06

    if-nez v0, :cond_8

    move-object v0, v1

    goto :goto_6

    .line 14
    :cond_8
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;->getRoot()Lcn/mucang/jiakaoyi/sundial/client/view/DraggableView;

    move-result-object v0

    :goto_6
    if-nez v0, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSystemUiVisibility(I)V

    .line 15
    :cond_a
    :goto_7
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->a:Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;

    if-nez v0, :cond_b

    goto :goto_9

    :cond_b
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/sundial/databinding/LayoutMiniSundialWindowBinding;->getRoot()Lcn/mucang/jiakaoyi/sundial/client/view/DraggableView;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_9

    .line 16
    :cond_c
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_e

    .line 17
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 18
    iget-object v2, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->f:Landroid/view/WindowManager;

    if-nez v2, :cond_d

    goto :goto_8

    :cond_d
    iget-object v1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    .line 19
    :goto_8
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_e
    :goto_9
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->i()V

    return-void
.end method
