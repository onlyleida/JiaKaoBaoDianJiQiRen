.class public Lorg/libpag/PAGImageView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libpag/PAGImageView$a;,
        Lorg/libpag/PAGImageView$PAGImageViewListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field protected static b:J = 0x40000000L

.field private static c:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private final A:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/libpag/PAGImageView$PAGImageViewListener;",
            ">;"
        }
    .end annotation
.end field

.field private final C:Landroid/animation/AnimatorListenerAdapter;

.field private volatile D:I

.field private volatile E:I

.field private volatile F:I

.field private volatile G:I

.field private H:F

.field private I:Z

.field private volatile J:Z

.field private K:Ljava/lang/Runnable;

.field private L:Ljava/lang/Runnable;

.field private M:Z

.field private d:Landroid/animation/ValueAnimator;

.field private e:Z

.field private volatile f:Z

.field private volatile g:Ljava/lang/Boolean;

.field private volatile h:Z

.field private final i:Ljava/lang/Object;

.field private j:I

.field private k:F

.field private l:Lorg/libpag/PAGComposition;

.field private m:Ljava/lang/String;

.field private n:I

.field private volatile o:Landroid/graphics/Matrix;

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/concurrent/Future;",
            ">;>;"
        }
    .end annotation
.end field

.field private q:F

.field private r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected volatile s:Lorg/libpag/CacheManager$a;

.field protected volatile t:Lorg/libpag/PAGImageView$a;

.field protected volatile u:Lorg/libpag/k$b;

.field protected volatile v:Lorg/libpag/CacheManager;

.field private volatile w:Landroid/graphics/Bitmap;

.field private x:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private y:Landroid/graphics/Matrix;

.field private volatile z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/libpag/PAGImageView;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lorg/libpag/PAGImageView;->e:Z

    .line 3
    iput-boolean p1, p0, Lorg/libpag/PAGImageView;->f:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lorg/libpag/PAGImageView;->g:Ljava/lang/Boolean;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/libpag/PAGImageView;->h:Z

    .line 6
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/libpag/PAGImageView;->i:Ljava/lang/Object;

    const/high16 v1, 0x41f00000    # 30.0f

    .line 7
    iput v1, p0, Lorg/libpag/PAGImageView;->k:F

    const/4 v1, 0x2

    .line 8
    iput v1, p0, Lorg/libpag/PAGImageView;->n:I

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/libpag/PAGImageView;->p:Ljava/util/ArrayList;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    iput v1, p0, Lorg/libpag/PAGImageView;->q:F

    .line 11
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lorg/libpag/PAGImageView;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    new-instance v2, Lorg/libpag/k$b;

    invoke-direct {v2}, Lorg/libpag/k$b;-><init>()V

    iput-object v2, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    .line 13
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lorg/libpag/PAGImageView;->x:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    new-instance v2, Lorg/libpag/f;

    invoke-direct {v2, p0}, Lorg/libpag/f;-><init>(Lorg/libpag/PAGImageView;)V

    iput-object v2, p0, Lorg/libpag/PAGImageView;->A:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/libpag/PAGImageView;->B:Ljava/util/ArrayList;

    .line 16
    new-instance v2, Lorg/libpag/g;

    invoke-direct {v2, p0}, Lorg/libpag/g;-><init>(Lorg/libpag/PAGImageView;)V

    iput-object v2, p0, Lorg/libpag/PAGImageView;->C:Landroid/animation/AnimatorListenerAdapter;

    .line 17
    iput v1, p0, Lorg/libpag/PAGImageView;->H:F

    .line 18
    iput-boolean p1, p0, Lorg/libpag/PAGImageView;->I:Z

    .line 19
    iput-boolean p1, p0, Lorg/libpag/PAGImageView;->J:Z

    .line 20
    new-instance p1, Lorg/libpag/h;

    invoke-direct {p1, p0}, Lorg/libpag/h;-><init>(Lorg/libpag/PAGImageView;)V

    iput-object p1, p0, Lorg/libpag/PAGImageView;->K:Ljava/lang/Runnable;

    .line 21
    new-instance p1, Lorg/libpag/i;

    invoke-direct {p1, p0}, Lorg/libpag/i;-><init>(Lorg/libpag/PAGImageView;)V

    iput-object p1, p0, Lorg/libpag/PAGImageView;->L:Ljava/lang/Runnable;

    .line 22
    iput-boolean v0, p0, Lorg/libpag/PAGImageView;->M:Z

    .line 23
    invoke-direct {p0}, Lorg/libpag/PAGImageView;->k()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lorg/libpag/PAGImageView;->e:Z

    .line 26
    iput-boolean p1, p0, Lorg/libpag/PAGImageView;->f:Z

    const/4 p2, 0x0

    .line 27
    iput-object p2, p0, Lorg/libpag/PAGImageView;->g:Ljava/lang/Boolean;

    const/4 p2, 0x1

    .line 28
    iput-boolean p2, p0, Lorg/libpag/PAGImageView;->h:Z

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/libpag/PAGImageView;->i:Ljava/lang/Object;

    const/high16 v0, 0x41f00000    # 30.0f

    .line 30
    iput v0, p0, Lorg/libpag/PAGImageView;->k:F

    const/4 v0, 0x2

    .line 31
    iput v0, p0, Lorg/libpag/PAGImageView;->n:I

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/libpag/PAGImageView;->p:Ljava/util/ArrayList;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 33
    iput v0, p0, Lorg/libpag/PAGImageView;->q:F

    .line 34
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lorg/libpag/PAGImageView;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    new-instance v1, Lorg/libpag/k$b;

    invoke-direct {v1}, Lorg/libpag/k$b;-><init>()V

    iput-object v1, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    .line 36
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lorg/libpag/PAGImageView;->x:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    new-instance v1, Lorg/libpag/f;

    invoke-direct {v1, p0}, Lorg/libpag/f;-><init>(Lorg/libpag/PAGImageView;)V

    iput-object v1, p0, Lorg/libpag/PAGImageView;->A:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/libpag/PAGImageView;->B:Ljava/util/ArrayList;

    .line 39
    new-instance v1, Lorg/libpag/g;

    invoke-direct {v1, p0}, Lorg/libpag/g;-><init>(Lorg/libpag/PAGImageView;)V

    iput-object v1, p0, Lorg/libpag/PAGImageView;->C:Landroid/animation/AnimatorListenerAdapter;

    .line 40
    iput v0, p0, Lorg/libpag/PAGImageView;->H:F

    .line 41
    iput-boolean p1, p0, Lorg/libpag/PAGImageView;->I:Z

    .line 42
    iput-boolean p1, p0, Lorg/libpag/PAGImageView;->J:Z

    .line 43
    new-instance p1, Lorg/libpag/h;

    invoke-direct {p1, p0}, Lorg/libpag/h;-><init>(Lorg/libpag/PAGImageView;)V

    iput-object p1, p0, Lorg/libpag/PAGImageView;->K:Ljava/lang/Runnable;

    .line 44
    new-instance p1, Lorg/libpag/i;

    invoke-direct {p1, p0}, Lorg/libpag/i;-><init>(Lorg/libpag/PAGImageView;)V

    iput-object p1, p0, Lorg/libpag/PAGImageView;->L:Ljava/lang/Runnable;

    .line 45
    iput-boolean p2, p0, Lorg/libpag/PAGImageView;->M:Z

    .line 46
    invoke-direct {p0}, Lorg/libpag/PAGImageView;->k()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lorg/libpag/PAGImageView;->e:Z

    .line 49
    iput-boolean p1, p0, Lorg/libpag/PAGImageView;->f:Z

    const/4 p2, 0x0

    .line 50
    iput-object p2, p0, Lorg/libpag/PAGImageView;->g:Ljava/lang/Boolean;

    const/4 p2, 0x1

    .line 51
    iput-boolean p2, p0, Lorg/libpag/PAGImageView;->h:Z

    .line 52
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lorg/libpag/PAGImageView;->i:Ljava/lang/Object;

    const/high16 p3, 0x41f00000    # 30.0f

    .line 53
    iput p3, p0, Lorg/libpag/PAGImageView;->k:F

    const/4 p3, 0x2

    .line 54
    iput p3, p0, Lorg/libpag/PAGImageView;->n:I

    .line 55
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/libpag/PAGImageView;->p:Ljava/util/ArrayList;

    const/high16 p3, 0x3f800000    # 1.0f

    .line 56
    iput p3, p0, Lorg/libpag/PAGImageView;->q:F

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/libpag/PAGImageView;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    new-instance v0, Lorg/libpag/k$b;

    invoke-direct {v0}, Lorg/libpag/k$b;-><init>()V

    iput-object v0, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/libpag/PAGImageView;->x:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    new-instance v0, Lorg/libpag/f;

    invoke-direct {v0, p0}, Lorg/libpag/f;-><init>(Lorg/libpag/PAGImageView;)V

    iput-object v0, p0, Lorg/libpag/PAGImageView;->A:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/libpag/PAGImageView;->B:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Lorg/libpag/g;

    invoke-direct {v0, p0}, Lorg/libpag/g;-><init>(Lorg/libpag/PAGImageView;)V

    iput-object v0, p0, Lorg/libpag/PAGImageView;->C:Landroid/animation/AnimatorListenerAdapter;

    .line 63
    iput p3, p0, Lorg/libpag/PAGImageView;->H:F

    .line 64
    iput-boolean p1, p0, Lorg/libpag/PAGImageView;->I:Z

    .line 65
    iput-boolean p1, p0, Lorg/libpag/PAGImageView;->J:Z

    .line 66
    new-instance p1, Lorg/libpag/h;

    invoke-direct {p1, p0}, Lorg/libpag/h;-><init>(Lorg/libpag/PAGImageView;)V

    iput-object p1, p0, Lorg/libpag/PAGImageView;->K:Ljava/lang/Runnable;

    .line 67
    new-instance p1, Lorg/libpag/i;

    invoke-direct {p1, p0}, Lorg/libpag/i;-><init>(Lorg/libpag/PAGImageView;)V

    iput-object p1, p0, Lorg/libpag/PAGImageView;->L:Ljava/lang/Runnable;

    .line 68
    iput-boolean p2, p0, Lorg/libpag/PAGImageView;->M:Z

    .line 69
    invoke-direct {p0}, Lorg/libpag/PAGImageView;->k()V

    return-void
.end method

.method public static MaxDiskCache()J
    .locals 2

    .line 1
    sget-wide v0, Lorg/libpag/PAGImageView;->b:J

    return-wide v0
.end method

.method public static SetMaxDiskCache(J)V
    .locals 0

    .line 1
    sput-wide p0, Lorg/libpag/PAGImageView;->b:J

    return-void
.end method

.method private a(Landroid/content/Context;)F
    .locals 4

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "animator_duration_scale"

    const/16 v3, 0x11

    if-lt v0, v3, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p1

    return p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method static synthetic a(Lorg/libpag/PAGImageView;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lorg/libpag/PAGImageView;->z:J

    return-wide p1
.end method

.method private a(I)Z
    .locals 7

    .line 21
    iget-object v0, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    invoke-virtual {v0}, Lorg/libpag/k$b;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/libpag/PAGImageView;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lorg/libpag/PAGImageView;->a()Lorg/libpag/PAGImageView$a;

    move-result-object v0

    .line 23
    iget-object v2, p0, Lorg/libpag/PAGImageView;->t:Lorg/libpag/PAGImageView$a;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/libpag/PAGImageView;->t:Lorg/libpag/PAGImageView$a;

    iget-object v2, v2, Lorg/libpag/PAGImageView$a;->a:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/libpag/PAGImageView;->t:Lorg/libpag/PAGImageView$a;

    iget-object v2, v2, Lorg/libpag/PAGImageView$a;->a:Ljava/lang/String;

    iget-object v3, v0, Lorg/libpag/PAGImageView$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 24
    invoke-virtual {p0}, Lorg/libpag/PAGImageView;->d()V

    .line 25
    iget-object v2, p0, Lorg/libpag/PAGImageView;->v:Lorg/libpag/CacheManager;

    iget-object v3, v0, Lorg/libpag/PAGImageView$a;->b:Ljava/lang/String;

    iget-object v4, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    iget v4, v4, Lorg/libpag/k$b;->a:I

    iget-object v5, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    iget v5, v5, Lorg/libpag/k$b;->b:I

    iget-object v6, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    iget v6, v6, Lorg/libpag/k$b;->d:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/libpag/CacheManager;->a(Ljava/lang/String;III)Lorg/libpag/CacheManager$a;

    move-result-object v2

    iput-object v2, p0, Lorg/libpag/PAGImageView;->s:Lorg/libpag/CacheManager$a;

    .line 26
    iget-object v2, p0, Lorg/libpag/PAGImageView;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 27
    :cond_1
    iput-object v0, p0, Lorg/libpag/PAGImageView;->t:Lorg/libpag/PAGImageView$a;

    .line 28
    iget-object v0, p0, Lorg/libpag/PAGImageView;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 29
    :cond_2
    invoke-direct {p0}, Lorg/libpag/PAGImageView;->r()V

    .line 30
    iget-object v0, p0, Lorg/libpag/PAGImageView;->t:Lorg/libpag/PAGImageView$a;

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/libpag/PAGImageView;->t:Lorg/libpag/PAGImageView$a;

    iget-object v0, v0, Lorg/libpag/PAGImageView$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 31
    iget-object v0, p0, Lorg/libpag/PAGImageView;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 32
    iput-object v0, p0, Lorg/libpag/PAGImageView;->w:Landroid/graphics/Bitmap;

    return v2

    .line 33
    :cond_3
    iget-object v0, p0, Lorg/libpag/PAGImageView;->s:Lorg/libpag/CacheManager$a;

    if-eqz v0, :cond_6

    .line 34
    :try_start_0
    iget-object v0, p0, Lorg/libpag/PAGImageView;->s:Lorg/libpag/CacheManager$a;

    invoke-virtual {v0, p1}, Lorg/libpag/CacheManager$a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 35
    iget-object v0, p0, Lorg/libpag/PAGImageView;->w:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/libpag/PAGImageView;->e:Z

    if-eqz v0, :cond_5

    .line 36
    :cond_4
    iget-object v0, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    iget v0, v0, Lorg/libpag/k$b;->a:I

    iget-object v3, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    iget v3, v3, Lorg/libpag/k$b;->b:I

    invoke-static {v0, v3}, Lorg/libpag/k;->a(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/libpag/PAGImageView;->w:Landroid/graphics/Bitmap;

    .line 37
    :cond_5
    iget-object v0, p0, Lorg/libpag/PAGImageView;->t:Lorg/libpag/PAGImageView$a;

    iget-object v0, v0, Lorg/libpag/PAGImageView$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lorg/libpag/PAGImageView;->w:Landroid/graphics/Bitmap;

    invoke-static {p0, v0, p1, v3}, Lorg/libpag/k$a;->a(Lorg/libpag/PAGImageView;Ljava/lang/String;ILandroid/graphics/Bitmap;)Lorg/libpag/k$a;

    move-result-object v0

    invoke-static {v0}, Lorg/libpag/PAGImageView;->a(Lorg/libpag/k$a;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 39
    :cond_6
    iget-object v0, p0, Lorg/libpag/PAGImageView;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    .line 40
    :cond_7
    iget-object v0, p0, Lorg/libpag/PAGImageView;->w:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lorg/libpag/PAGImageView;->e:Z

    if-eqz v0, :cond_9

    .line 41
    :cond_8
    iget-object v0, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    iget v0, v0, Lorg/libpag/k$b;->a:I

    iget-object v3, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    iget v3, v3, Lorg/libpag/k$b;->b:I

    invoke-static {v0, v3}, Lorg/libpag/k;->a(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/libpag/PAGImageView;->w:Landroid/graphics/Bitmap;

    .line 42
    :cond_9
    iget-object v0, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    iget-object v0, v0, Lorg/libpag/k$b;->f:Lorg/libpag/PAGDecoder;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    iget-object v0, v0, Lorg/libpag/k$b;->f:Lorg/libpag/PAGDecoder;

    iget-object v3, p0, Lorg/libpag/PAGImageView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3, p1}, Lorg/libpag/PAGDecoder;->copyFrameTo(Landroid/graphics/Bitmap;I)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    .line 43
    :cond_a
    iget-boolean v0, p0, Lorg/libpag/PAGImageView;->e:Z

    if-eqz v0, :cond_b

    .line 44
    iget-object v0, p0, Lorg/libpag/PAGImageView;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lorg/libpag/PAGImageView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_b
    iget-object v0, p0, Lorg/libpag/PAGImageView;->s:Lorg/libpag/CacheManager$a;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/libpag/PAGImageView;->s:Lorg/libpag/CacheManager$a;

    iget-object v1, p0, Lorg/libpag/PAGImageView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, v1}, Lorg/libpag/CacheManager$a;->b(ILandroid/graphics/Bitmap;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 46
    iget-object p1, p0, Lorg/libpag/PAGImageView;->p:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    sget-object v1, Lorg/libpag/PAGImageView;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lorg/libpag/j;

    invoke-direct {v3, p0}, Lorg/libpag/j;-><init>(Lorg/libpag/PAGImageView;)V

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    return v2

    :cond_d
    :goto_0
    return v1
.end method

.method static synthetic a(Lorg/libpag/PAGImageView;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/libpag/PAGImageView;->g()Z

    move-result p0

    return p0
.end method

.method protected static a(Lorg/libpag/k$a;)Z
    .locals 3

    .line 47
    iget-object v0, p0, Lorg/libpag/k$a;->a:Lorg/libpag/PAGImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/libpag/k$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lorg/libpag/k$a;->a:Lorg/libpag/PAGImageView;

    invoke-virtual {v0, p0}, Lorg/libpag/PAGImageView;->b(Lorg/libpag/k$a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inflateBitmapFromDiskCache failed:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/libpag/k$a;->a:Lorg/libpag/PAGImageView;

    iget-object p0, p0, Lorg/libpag/PAGImageView;->m:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PAGImageView"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 50
    :cond_1
    iget-object v0, p0, Lorg/libpag/k$a;->a:Lorg/libpag/PAGImageView;

    iget-boolean v1, v0, Lorg/libpag/PAGImageView;->e:Z

    if-eqz v1, :cond_2

    .line 51
    iget-object v0, v0, Lorg/libpag/PAGImageView;->x:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lorg/libpag/k$a;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lorg/libpag/k$a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method static synthetic b(Lorg/libpag/PAGImageView;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/libpag/PAGImageView;->z:J

    return-wide v0
.end method

.method static synthetic c(Lorg/libpag/PAGImageView;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/libpag/PAGImageView;->B:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic d(Lorg/libpag/PAGImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/libpag/PAGImageView;->n()V

    return-void
.end method

.method static synthetic e(Lorg/libpag/PAGImageView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/libpag/PAGImageView;->I:Z

    return p0
.end method

.method static synthetic f(Lorg/libpag/PAGImageView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/libpag/PAGImageView;->d:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private static f()V
    .locals 9

    .line 2
    sget-object v0, Lorg/libpag/PAGImageView;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lorg/libpag/PAGImageView;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lorg/libpag/PAGImageView;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0x2

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lorg/libpag/PAGImageView;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method private g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/libpag/PAGImageView;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iget-object v1, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    iget v1, v1, Lorg/libpag/k$b;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private h()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/libpag/PAGImageView;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/libpag/PAGImageView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/libpag/PAGImageView;->z:J

    .line 3
    iget-object v0, p0, Lorg/libpag/PAGImageView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/libpag/PAGImageView;->K:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5
    iget-object v0, p0, Lorg/libpag/PAGImageView;->L:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private i()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/libpag/PAGImageView;->I:Z

    const-string v1, "PAGImageView"

    if-nez v0, :cond_0

    const-string v0, "doPlay: View is not attached to window"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lorg/libpag/PAGImageView;->H:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0}, Lorg/libpag/PAGImageView;->n()V

    const-string v0, "doPlay: The scale of animator duration is turned off"

    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x3

    .line 6
    invoke-static {v0, p0}, Lorg/libpag/k;->b(ILjava/lang/Object;)V

    const-string v0, "doPlay"

    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lorg/libpag/PAGImageView;->d:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Lorg/libpag/PAGImageView;->z:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 9
    invoke-direct {p0}, Lorg/libpag/PAGImageView;->t()V

    return-void
.end method

.method private j()Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/libpag/PAGImageView;->D:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/libpag/PAGImageView;->E:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private k()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/libpag/PAGImageView;->f()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/libpag/CacheManager;->a(Landroid/content/Context;)Lorg/libpag/CacheManager;

    move-result-object v0

    iput-object v0, p0, Lorg/libpag/PAGImageView;->v:Lorg/libpag/CacheManager;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/libpag/PAGImageView;->d:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 5
    iget-object v0, p0, Lorg/libpag/PAGImageView;->d:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    iget-object v0, p0, Lorg/libpag/PAGImageView;->d:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lorg/libpag/PAGImageView;->A:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/libpag/PAGImageView;->a(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lorg/libpag/PAGImageView;->H:F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private l()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/libpag/PAGImageView;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/libpag/PAGImageView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/libpag/PAGImageView;->B:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libpag/PAGImageView$PAGImageViewListener;

    .line 6
    invoke-interface {v1, p0}, Lorg/libpag/PAGImageView$PAGImageViewListener;->onAnimationUpdate(Lorg/libpag/PAGImageView;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method private n()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lorg/libpag/PAGImageView;->f:Z

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/libpag/PAGImageView;->B:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libpag/PAGImageView$PAGImageViewListener;

    .line 6
    invoke-interface {v1, p0}, Lorg/libpag/PAGImageView$PAGImageViewListener;->onAnimationEnd(Lorg/libpag/PAGImageView;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/libpag/PAGImageView;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/libpag/PAGImageView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/libpag/PAGImageView;->g:Ljava/lang/Boolean;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/libpag/PAGImageView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lorg/libpag/PAGImageView;->h()V

    :cond_1
    return-void
.end method

.method private p()V
    .locals 5

    .line 1
    iget v0, p0, Lorg/libpag/PAGImageView;->n:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    iget v1, v1, Lorg/libpag/k$b;->a:I

    iget-object v2, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    iget v2, v2, Lorg/libpag/k$b;->b:I

    iget v3, p0, Lorg/libpag/PAGImageView;->D:I

    iget v4, p0, Lorg/libpag/PAGImageView;->E:I

    invoke-static {v0, v1, v2, v3, v4}, Lorg/libpag/k;->a(IIIII)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lorg/libpag/PAGImageView;->o:Landroid/graphics/Matrix;

    return-void
.end method

.method private q()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/libpag/PAGImageView;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method private r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/libpag/PAGImageView;->s:Lorg/libpag/CacheManager$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/libpag/PAGImageView;->t:Lorg/libpag/PAGImageView$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/libpag/PAGImageView;->t:Lorg/libpag/PAGImageView$a;

    iget-object v0, v0, Lorg/libpag/PAGImageView$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lorg/libpag/PAGImageView;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lorg/libpag/PAGImageView;->s:Lorg/libpag/CacheManager$a;

    invoke-virtual {v0}, Lorg/libpag/CacheManager$a;->g()V

    .line 4
    iget-object v0, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    iget-object v0, v0, Lorg/libpag/k$b;->f:Lorg/libpag/PAGDecoder;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    invoke-virtual {v0}, Lorg/libpag/k$b;->b()V

    .line 6
    :cond_1
    iget-object v0, p0, Lorg/libpag/PAGImageView;->v:Lorg/libpag/CacheManager;

    iget-object v1, p0, Lorg/libpag/PAGImageView;->t:Lorg/libpag/PAGImageView$a;

    iget-object v1, v1, Lorg/libpag/PAGImageView$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/libpag/CacheManager;->b(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lorg/libpag/PAGImageView;->s:Lorg/libpag/CacheManager$a;

    invoke-virtual {v0}, Lorg/libpag/CacheManager$a;->h()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lorg/libpag/PAGImageView;->s:Lorg/libpag/CacheManager$a;

    return-void

    .line 9
    :cond_2
    iget-object v0, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    iget-object v0, v0, Lorg/libpag/k$b;->f:Lorg/libpag/PAGDecoder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/libpag/PAGImageView;->s:Lorg/libpag/CacheManager$a;

    invoke-virtual {v0}, Lorg/libpag/CacheManager$a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lorg/libpag/PAGImageView;->s:Lorg/libpag/CacheManager$a;

    invoke-virtual {v0}, Lorg/libpag/CacheManager$a;->g()V

    .line 11
    iget-object v0, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    invoke-virtual {v0}, Lorg/libpag/k$b;->b()V

    .line 12
    iget-object v0, p0, Lorg/libpag/PAGImageView;->s:Lorg/libpag/CacheManager$a;

    invoke-virtual {v0}, Lorg/libpag/CacheManager$a;->f()V

    .line 13
    iget-object v0, p0, Lorg/libpag/PAGImageView;->s:Lorg/libpag/CacheManager$a;

    invoke-virtual {v0}, Lorg/libpag/CacheManager$a;->h()V

    :cond_3
    :goto_0
    return-void
.end method

.method private s()V
    .locals 2

    .line 1
    iget v0, p0, Lorg/libpag/PAGImageView;->D:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/libpag/PAGImageView;->E:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/libpag/PAGImageView;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/libpag/PAGImageView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/libpag/PAGImageView;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/libpag/PAGImageView;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-object v1, p0, Lorg/libpag/PAGImageView;->g:Ljava/lang/Boolean;

    .line 3
    invoke-direct {p0}, Lorg/libpag/PAGImageView;->i()V

    return-void

    .line 4
    :cond_1
    :goto_0
    iput-object v1, p0, Lorg/libpag/PAGImageView;->g:Ljava/lang/Boolean;

    return-void
.end method

.method private t()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/libpag/PAGImageView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lorg/libpag/PAGImageView;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/libpag/PAGImageView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lorg/libpag/PAGImageView;->L:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5
    iget-object v0, p0, Lorg/libpag/PAGImageView;->K:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method protected a()Lorg/libpag/PAGImageView$a;
    .locals 5

    .line 6
    iget-object v0, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    invoke-virtual {v0}, Lorg/libpag/k$b;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/libpag/PAGImageView;->l:Lorg/libpag/PAGComposition;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/libpag/PAGImageView;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/libpag/PAGImageView;->m:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/libpag/PAGImageView;->t:Lorg/libpag/PAGImageView$a;

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lorg/libpag/PAGImageView;->t:Lorg/libpag/PAGImageView$a;

    return-object v0

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    iget v2, v2, Lorg/libpag/k$b;->a:I

    shl-int/lit8 v2, v2, 0x10

    iget-object v3, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    iget v3, v3, Lorg/libpag/k$b;->b:I

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    iget v2, v2, Lorg/libpag/k$b;->c:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 10
    iget-object v3, p0, Lorg/libpag/PAGImageView;->m:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/libpag/PAGImageView;->m:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_2
    iget-object v3, p0, Lorg/libpag/PAGImageView;->l:Lorg/libpag/PAGComposition;

    instance-of v4, v3, Lorg/libpag/PAGFile;

    if-eqz v4, :cond_3

    invoke-static {v3}, Lorg/libpag/CacheManager;->ContentVersion(Lorg/libpag/PAGComposition;)I

    move-result v3

    if-nez v3, :cond_3

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/libpag/PAGImageView;->l:Lorg/libpag/PAGComposition;

    check-cast v3, Lorg/libpag/PAGFile;

    invoke-virtual {v3}, Lorg/libpag/PAGFile;->path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 14
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/libpag/PAGImageView;->l:Lorg/libpag/PAGComposition;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/libpag/PAGImageView;->l:Lorg/libpag/PAGComposition;

    invoke-static {v1}, Lorg/libpag/CacheManager;->ContentVersion(Lorg/libpag/PAGComposition;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 15
    :goto_0
    iget-object v1, p0, Lorg/libpag/PAGImageView;->t:Lorg/libpag/PAGImageView$a;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/libpag/PAGImageView;->t:Lorg/libpag/PAGImageView$a;

    iget-object v1, v1, Lorg/libpag/PAGImageView$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 16
    iget-object v0, p0, Lorg/libpag/PAGImageView;->t:Lorg/libpag/PAGImageView$a;

    return-object v0

    .line 17
    :cond_4
    new-instance v1, Lorg/libpag/PAGImageView$a;

    invoke-direct {v1}, Lorg/libpag/PAGImageView$a;-><init>()V

    .line 18
    iput-object v0, v1, Lorg/libpag/PAGImageView$a;->a:Ljava/lang/String;

    .line 19
    invoke-static {v0}, Lorg/libpag/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/libpag/PAGImageView$a;->b:Ljava/lang/String;

    .line 20
    iput-boolean v2, v1, Lorg/libpag/PAGImageView$a;->c:Z

    return-object v1

    :cond_5
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public addListener(Lorg/libpag/PAGImageView$PAGImageViewListener;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/libpag/PAGImageView;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected b()V
    .locals 8

    .line 2
    iget-object v0, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    invoke-virtual {v0}, Lorg/libpag/k$b;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    iget-object v1, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/libpag/PAGImageView;->l:Lorg/libpag/PAGComposition;

    iget-object v4, p0, Lorg/libpag/PAGImageView;->m:Ljava/lang/String;

    iget v5, p0, Lorg/libpag/PAGImageView;->D:I

    iget v6, p0, Lorg/libpag/PAGImageView;->E:I

    iget v7, p0, Lorg/libpag/PAGImageView;->k:F

    invoke-virtual/range {v1 .. v7}, Lorg/libpag/k$b;->a(Landroid/content/Context;Lorg/libpag/PAGComposition;Ljava/lang/String;IIF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lorg/libpag/PAGImageView;->d:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    iget-wide v1, v1, Lorg/libpag/k$b;->e:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    iget-object v0, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    invoke-virtual {v0}, Lorg/libpag/k$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lorg/libpag/PAGImageView;->a()Lorg/libpag/PAGImageView$a;

    move-result-object v0

    iput-object v0, p0, Lorg/libpag/PAGImageView;->t:Lorg/libpag/PAGImageView$a;

    .line 7
    iget-object v0, p0, Lorg/libpag/PAGImageView;->s:Lorg/libpag/CacheManager$a;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/libpag/PAGImageView;->t:Lorg/libpag/PAGImageView$a;

    if-nez v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lorg/libpag/PAGImageView;->v:Lorg/libpag/CacheManager;

    iget-object v1, p0, Lorg/libpag/PAGImageView;->t:Lorg/libpag/PAGImageView$a;

    iget-object v1, v1, Lorg/libpag/PAGImageView$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    iget v2, v2, Lorg/libpag/k$b;->a:I

    iget-object v3, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    iget v3, v3, Lorg/libpag/k$b;->b:I

    iget-object v4, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    iget v4, v4, Lorg/libpag/k$b;->d:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/libpag/CacheManager;->a(Ljava/lang/String;III)Lorg/libpag/CacheManager$a;

    move-result-object v0

    iput-object v0, p0, Lorg/libpag/PAGImageView;->s:Lorg/libpag/CacheManager$a;

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 9
    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/libpag/PAGImageView;->p()V

    .line 10
    iget-object v0, p0, Lorg/libpag/PAGImageView;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method protected b(Lorg/libpag/k$a;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 11
    :try_start_0
    iget-object v1, p0, Lorg/libpag/PAGImageView;->s:Lorg/libpag/CacheManager$a;

    if-nez v1, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lorg/libpag/PAGImageView;->s:Lorg/libpag/CacheManager$a;

    iget v2, p1, Lorg/libpag/k$a;->c:I

    iget-object p1, p1, Lorg/libpag/k$a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, p1}, Lorg/libpag/CacheManager$a;->a(ILandroid/graphics/Bitmap;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method protected c()V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    invoke-virtual {v0}, Lorg/libpag/k$b;->c()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/libpag/PAGImageView;->d()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/libpag/PAGImageView;->t:Lorg/libpag/PAGImageView$a;

    .line 6
    invoke-virtual {p0}, Lorg/libpag/PAGImageView;->b()V

    return-void
.end method

.method public cacheAllFramesInMemory()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/libpag/PAGImageView;->e:Z

    return v0
.end method

.method public currentFrame()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/libpag/PAGImageView;->j:I

    return v0
.end method

.method public currentImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/libpag/PAGImageView;->w:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected d()V
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/libpag/PAGImageView;->s:Lorg/libpag/CacheManager$a;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/libpag/PAGImageView;->s:Lorg/libpag/CacheManager$a;

    invoke-virtual {v0}, Lorg/libpag/CacheManager$a;->g()V

    .line 4
    iget-object v0, p0, Lorg/libpag/PAGImageView;->t:Lorg/libpag/PAGImageView$a;

    iget-boolean v0, v0, Lorg/libpag/PAGImageView$a;->c:Z

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/libpag/PAGImageView;->v:Lorg/libpag/CacheManager;

    iget-object v2, p0, Lorg/libpag/PAGImageView;->t:Lorg/libpag/PAGImageView$a;

    iget-object v2, v2, Lorg/libpag/PAGImageView$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/libpag/CacheManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/libpag/PAGImageView;->s:Lorg/libpag/CacheManager$a;

    invoke-virtual {v0}, Lorg/libpag/CacheManager$a;->h()V

    .line 8
    iget-object v0, p0, Lorg/libpag/PAGImageView;->v:Lorg/libpag/CacheManager;

    iget-object v1, p0, Lorg/libpag/PAGImageView;->t:Lorg/libpag/PAGImageView$a;

    iget-object v1, v1, Lorg/libpag/PAGImageView$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/libpag/CacheManager;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/libpag/PAGImageView;->s:Lorg/libpag/CacheManager$a;

    :cond_1
    return-void
.end method

.method protected e()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lorg/libpag/PAGImageView;->I:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/libpag/PAGImageView;->flush()Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public flush()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    invoke-virtual {v0}, Lorg/libpag/k$b;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/libpag/PAGImageView;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v2, p0, Lorg/libpag/PAGImageView;->h:Z

    if-eqz v2, :cond_1

    .line 4
    iput-boolean v1, p0, Lorg/libpag/PAGImageView;->h:Z

    .line 5
    iget-object v2, p0, Lorg/libpag/PAGImageView;->d:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    iget-wide v3, v3, Lorg/libpag/k$b;->e:J

    long-to-float v3, v3

    const v4, 0x3a83126f    # 0.001f

    mul-float v3, v3, v4

    float-to-double v3, v3

    iget v5, p0, Lorg/libpag/PAGImageView;->j:I

    iget-object v6, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    iget v6, v6, Lorg/libpag/k$b;->d:I

    invoke-static {v5, v6}, Lorg/libpag/k;->b(II)D

    move-result-wide v5

    mul-double v3, v3, v5

    double-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 6
    :cond_1
    iget-object v2, p0, Lorg/libpag/PAGImageView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    float-to-double v2, v2

    iget-object v4, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    iget v4, v4, Lorg/libpag/k$b;->d:I

    invoke-static {v2, v3, v4}, Lorg/libpag/k;->a(DI)I

    move-result v2

    .line 7
    iget v3, p0, Lorg/libpag/PAGImageView;->j:I

    if-ne v2, v3, :cond_2

    iget-boolean v3, p0, Lorg/libpag/PAGImageView;->J:Z

    if-nez v3, :cond_2

    .line 8
    monitor-exit v0

    return v1

    .line 9
    :cond_2
    iput-boolean v1, p0, Lorg/libpag/PAGImageView;->J:Z

    .line 10
    iput v2, p0, Lorg/libpag/PAGImageView;->j:I

    .line 11
    invoke-direct {p0, v2}, Lorg/libpag/PAGImageView;->a(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 12
    monitor-exit v0

    return v1

    .line 13
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-direct {p0}, Lorg/libpag/PAGImageView;->m()V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getComposition()Lorg/libpag/PAGComposition;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/libpag/PAGImageView;->l:Lorg/libpag/PAGComposition;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/libpag/PAGImageView;->m:Ljava/lang/String;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/libpag/PAGImageView;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public matrix()Landroid/graphics/Matrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/libpag/PAGImageView;->o:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/libpag/PAGImageView;->I:Z

    .line 2
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 3
    iput-boolean v0, p0, Lorg/libpag/PAGImageView;->J:Z

    .line 4
    iget-object v0, p0, Lorg/libpag/PAGImageView;->d:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lorg/libpag/PAGImageView;->A:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    iget-object v0, p0, Lorg/libpag/PAGImageView;->d:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lorg/libpag/PAGImageView;->C:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6
    sget-object v0, Lorg/libpag/PAGImageView;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Lorg/libpag/k;->b()V

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-direct {p0}, Lorg/libpag/PAGImageView;->s()V

    return-void

    :catchall_0
    move-exception v1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lorg/libpag/PAGImageView;->I:Z

    .line 2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v1, 0x1

    .line 3
    invoke-static {v1, p0}, Lorg/libpag/k;->a(ILjava/lang/Object;)V

    .line 4
    invoke-direct {p0}, Lorg/libpag/PAGImageView;->o()V

    .line 5
    iget-object v1, p0, Lorg/libpag/PAGImageView;->d:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lorg/libpag/PAGImageView;->A:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    iget-object v1, p0, Lorg/libpag/PAGImageView;->d:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lorg/libpag/PAGImageView;->C:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    invoke-direct {p0}, Lorg/libpag/PAGImageView;->q()V

    const/4 v1, 0x2

    .line 8
    invoke-static {v1, p0}, Lorg/libpag/k;->b(ILjava/lang/Object;)V

    .line 9
    sget-object v1, Lorg/libpag/PAGImageView;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 10
    :try_start_0
    invoke-static {}, Lorg/libpag/k;->a()V

    .line 11
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lorg/libpag/PAGImageView;->w:Landroid/graphics/Bitmap;

    .line 13
    iget-object v1, p0, Lorg/libpag/PAGImageView;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 14
    iget-object v1, p0, Lorg/libpag/PAGImageView;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/libpag/PAGImageView;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/libpag/PAGImageView;->w:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/libpag/PAGImageView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    iget-object v0, p0, Lorg/libpag/PAGImageView;->y:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/libpag/PAGImageView;->o:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lorg/libpag/PAGImageView;->o:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 8
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/libpag/PAGImageView;->w:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    iput p1, p0, Lorg/libpag/PAGImageView;->F:I

    .line 3
    iput p2, p0, Lorg/libpag/PAGImageView;->G:I

    .line 4
    iget p3, p0, Lorg/libpag/PAGImageView;->q:F

    int-to-float p1, p1

    mul-float p1, p1, p3

    float-to-int p1, p1

    iput p1, p0, Lorg/libpag/PAGImageView;->D:I

    int-to-float p1, p2

    mul-float p3, p3, p1

    float-to-int p1, p3

    .line 5
    iput p1, p0, Lorg/libpag/PAGImageView;->E:I

    const/4 p1, 0x3

    .line 6
    invoke-static {p1, p0}, Lorg/libpag/k;->b(ILjava/lang/Object;)V

    .line 7
    invoke-direct {p0}, Lorg/libpag/PAGImageView;->s()V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    .line 2
    iget-boolean v0, p0, Lorg/libpag/PAGImageView;->M:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iput-boolean p1, p0, Lorg/libpag/PAGImageView;->M:Z

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVisibilityAggregated isVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PAGImageView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 5
    invoke-direct {p0}, Lorg/libpag/PAGImageView;->s()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lorg/libpag/PAGImageView;->o()V

    :goto_0
    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lorg/libpag/PAGImageView;->f:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/libpag/PAGImageView;->g:Ljava/lang/Boolean;

    .line 3
    invoke-direct {p0}, Lorg/libpag/PAGImageView;->h()V

    return-void
.end method

.method public play()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/libpag/PAGImageView;->f:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/libpag/PAGImageView;->g:Ljava/lang/Boolean;

    .line 3
    iget-object v0, p0, Lorg/libpag/PAGImageView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lorg/libpag/PAGImageView;->setCurrentFrame(I)V

    .line 5
    :cond_0
    invoke-direct {p0}, Lorg/libpag/PAGImageView;->i()V

    return-void
.end method

.method public removeListener(Lorg/libpag/PAGImageView$PAGImageViewListener;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/libpag/PAGImageView;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public renderScale()F
    .locals 1

    .line 1
    iget v0, p0, Lorg/libpag/PAGImageView;->q:F

    return v0
.end method

.method public scaleMode()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/libpag/PAGImageView;->n:I

    return v0
.end method

.method public setCacheAllFramesInMemory(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/libpag/PAGImageView;->e:Z

    return-void
.end method

.method public setComposition(Lorg/libpag/PAGComposition;)V
    .locals 1

    const/high16 v0, 0x41f00000    # 30.0f

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/libpag/PAGImageView;->setComposition(Lorg/libpag/PAGComposition;F)V

    return-void
.end method

.method public setComposition(Lorg/libpag/PAGComposition;F)V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/libpag/PAGImageView;->l:Lorg/libpag/PAGComposition;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/libpag/PAGImageView;->k:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    invoke-virtual {v0}, Lorg/libpag/k$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/libpag/PAGImageView;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    iput-object p1, p0, Lorg/libpag/PAGImageView;->l:Lorg/libpag/PAGComposition;

    .line 5
    iput p2, p0, Lorg/libpag/PAGImageView;->k:F

    .line 6
    iput-boolean v1, p0, Lorg/libpag/PAGImageView;->h:Z

    .line 7
    iget-object p1, p0, Lorg/libpag/PAGImageView;->d:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 8
    invoke-direct {p0}, Lorg/libpag/PAGImageView;->q()V

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lorg/libpag/PAGImageView;->o:Landroid/graphics/Matrix;

    .line 10
    iput-object p1, p0, Lorg/libpag/PAGImageView;->w:Landroid/graphics/Bitmap;

    const/4 p1, 0x4

    .line 11
    invoke-static {p1, p0}, Lorg/libpag/k;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public setCurrentFrame(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    invoke-virtual {v0}, Lorg/libpag/k$b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    iget v0, v0, Lorg/libpag/k$b;->d:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/libpag/PAGImageView;->s:Lorg/libpag/CacheManager$a;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/libpag/PAGImageView;->g()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput p1, p0, Lorg/libpag/PAGImageView;->j:I

    .line 3
    iget-object p1, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    iget-wide v0, p1, Lorg/libpag/k$b;->e:J

    long-to-float p1, v0

    const v0, 0x3a83126f    # 0.001f

    mul-float p1, p1, v0

    float-to-double v0, p1

    iget p1, p0, Lorg/libpag/PAGImageView;->j:I

    iget-object v2, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    iget v2, v2, Lorg/libpag/k$b;->d:I

    invoke-static {p1, v2}, Lorg/libpag/k;->b(II)D

    move-result-wide v2

    mul-double v0, v0, v2

    double-to-float p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 5
    iget-object v0, p0, Lorg/libpag/PAGImageView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float p1, p1, v0

    float-to-long v0, p1

    iput-wide v0, p0, Lorg/libpag/PAGImageView;->z:J

    .line 6
    iget-object p1, p0, Lorg/libpag/PAGImageView;->i:Ljava/lang/Object;

    monitor-enter p1

    .line 7
    :try_start_0
    iget-object v0, p0, Lorg/libpag/PAGImageView;->d:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Lorg/libpag/PAGImageView;->z:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lorg/libpag/PAGImageView;->h:Z

    .line 9
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static {p0}, Lorg/libpag/k;->a(Lorg/libpag/PAGImageView;)V

    return-void

    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/libpag/PAGImageView;->o:Landroid/graphics/Matrix;

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lorg/libpag/PAGImageView;->n:I

    .line 3
    invoke-direct {p0}, Lorg/libpag/PAGImageView;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setPath(Ljava/lang/String;)Z
    .locals 1

    const/high16 v0, 0x41f00000    # 30.0f

    .line 11
    invoke-virtual {p0, p1, v0}, Lorg/libpag/PAGImageView;->setPath(Ljava/lang/String;F)Z

    move-result p1

    return p1
.end method

.method public setPath(Ljava/lang/String;F)Z
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/libpag/PAGImageView;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/libpag/PAGImageView;->k:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/libpag/PAGImageView;->u:Lorg/libpag/k$b;

    invoke-virtual {v0}, Lorg/libpag/k$b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 2
    :cond_1
    iget-object v0, p0, Lorg/libpag/PAGImageView;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iput-object p1, p0, Lorg/libpag/PAGImageView;->m:Ljava/lang/String;

    .line 4
    iput p2, p0, Lorg/libpag/PAGImageView;->k:F

    .line 5
    iput-boolean v1, p0, Lorg/libpag/PAGImageView;->h:Z

    .line 6
    iget-object p1, p0, Lorg/libpag/PAGImageView;->d:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 7
    invoke-direct {p0}, Lorg/libpag/PAGImageView;->q()V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lorg/libpag/PAGImageView;->o:Landroid/graphics/Matrix;

    .line 9
    iput-object p1, p0, Lorg/libpag/PAGImageView;->w:Landroid/graphics/Bitmap;

    const/4 p1, 0x4

    .line 10
    invoke-static {p1, p0}, Lorg/libpag/k;->b(ILjava/lang/Object;)V

    return v1
.end method

.method public setRenderScale(F)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/libpag/PAGImageView;->q:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    :cond_2
    iput p1, p0, Lorg/libpag/PAGImageView;->q:F

    .line 3
    iget v0, p0, Lorg/libpag/PAGImageView;->F:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int v0, v0

    iput v0, p0, Lorg/libpag/PAGImageView;->D:I

    .line 4
    iget v0, p0, Lorg/libpag/PAGImageView;->G:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int v0, v0

    iput v0, p0, Lorg/libpag/PAGImageView;->E:I

    .line 5
    invoke-direct {p0}, Lorg/libpag/PAGImageView;->p()V

    cmpg-float v0, p1, v1

    if-gez v0, :cond_3

    .line 6
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/libpag/PAGImageView;->y:Landroid/graphics/Matrix;

    div-float/2addr v1, p1

    .line 7
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    :cond_3
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/libpag/PAGImageView;->d:Landroid/animation/ValueAnimator;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public setScaleMode(I)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/libpag/PAGImageView;->n:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lorg/libpag/PAGImageView;->n:I

    .line 3
    invoke-direct {p0}, Lorg/libpag/PAGImageView;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-direct {p0}, Lorg/libpag/PAGImageView;->p()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lorg/libpag/PAGImageView;->o:Landroid/graphics/Matrix;

    :goto_0
    return-void
.end method
