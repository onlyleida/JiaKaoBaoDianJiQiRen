.class public Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;,
        Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$b;
    }
.end annotation


# static fields
.field private static final Z:I

.field private static final a0:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field private B:I

.field private C:I

.field private D:I

.field private E:D

.field private F:D

.field private G:Z

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private final N:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final O:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final P:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final Q:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final R:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final S:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final T:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final U:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final V:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final W:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final X:Landroid/os/HandlerThread;

.field private final Y:Landroid/os/Handler;

.field private a:Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;

.field private b:Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:D

.field private w:D

.field private x:D

.field private y:D

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "car-main-distance-m"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->e(Ljava/lang/String;F)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->a0:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    sput v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->Z:I

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;->None:Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->a:Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->b:Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->c:I

    .line 6
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->d:I

    .line 7
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->e:I

    .line 8
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f:I

    .line 9
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->k:I

    .line 10
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->l:I

    const/4 v1, -0x1

    .line 11
    iput v1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->D:I

    const-wide/16 v1, 0x0

    .line 12
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->F:D

    .line 13
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->H:I

    .line 14
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->I:I

    .line 15
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->J:I

    .line 16
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->K:I

    .line 17
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->L:I

    .line 18
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->M:I

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->N:Ljava/util/LinkedList;

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->O:Ljava/util/LinkedList;

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->P:Ljava/util/LinkedList;

    .line 22
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->Q:Ljava/util/LinkedList;

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->R:Ljava/util/LinkedList;

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->S:Ljava/util/LinkedList;

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->T:Ljava/util/LinkedList;

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->U:Ljava/util/LinkedList;

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->V:Ljava/util/LinkedList;

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->W:Ljava/util/LinkedList;

    .line 29
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GpsAnalysisThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->X:Landroid/os/HandlerThread;

    .line 30
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 31
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$a;-><init>(Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;Landroid/os/Looper;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->Y:Landroid/os/Handler;

    const/4 v0, 0x1

    const-wide/16 v2, 0x3e8

    .line 32
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 33
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->G:Z

    .line 34
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->a0:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->F:D

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->g(Landroid/os/Message;)V

    return-void
.end method

.method private b()V
    .locals 7

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->m:I

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-lez v0, :cond_0

    .line 2
    iget v3, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->q:I

    int-to-double v3, v3

    mul-double v3, v3, v1

    int-to-double v5, v0

    div-double/2addr v3, v5

    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->v:D

    .line 3
    iget v3, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->o:I

    int-to-double v3, v3

    mul-double v3, v3, v1

    int-to-double v5, v0

    div-double/2addr v3, v5

    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->x:D

    .line 4
    :cond_0
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->r:I

    if-lez v0, :cond_1

    .line 5
    iget v3, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->u:I

    int-to-double v3, v3

    mul-double v3, v3, v1

    int-to-double v5, v0

    div-double/2addr v3, v5

    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->w:D

    .line 6
    iget v3, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->s:I

    int-to-double v3, v3

    mul-double v3, v3, v1

    int-to-double v0, v0

    div-double/2addr v3, v0

    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->y:D

    :cond_1
    return-void
.end method

.method public static f()Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$b;->a:Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    return-object v0
.end method

.method private g(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    .line 2
    :pswitch_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->W:Ljava/util/LinkedList;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->M:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->W:Ljava/util/LinkedList;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->M:I

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->u(Ljava/util/LinkedList;I)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->W:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->i:I

    .line 5
    iget p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->j:I

    add-int/2addr p1, v1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->j:I

    goto/16 :goto_5

    .line 6
    :pswitch_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->V:Ljava/util/LinkedList;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->M:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->V:Ljava/util/LinkedList;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->M:I

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->u(Ljava/util/LinkedList;I)V

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->V:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->g:I

    .line 9
    iget p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->h:I

    add-int/2addr p1, v1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->h:I

    goto/16 :goto_5

    .line 10
    :pswitch_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->U:Ljava/util/LinkedList;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->M:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->U:Ljava/util/LinkedList;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->M:I

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->u(Ljava/util/LinkedList;I)V

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->U:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->k:I

    .line 13
    iget p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->l:I

    add-int/2addr p1, v1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->l:I

    goto/16 :goto_5

    .line 14
    :pswitch_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->T:Ljava/util/LinkedList;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->M:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 15
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->T:Ljava/util/LinkedList;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->M:I

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->u(Ljava/util/LinkedList;I)V

    .line 16
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->T:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->e:I

    .line 17
    iget p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f:I

    add-int/2addr p1, v1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f:I

    goto/16 :goto_5

    .line 18
    :pswitch_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->S:Ljava/util/LinkedList;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->M:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 19
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->S:Ljava/util/LinkedList;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->M:I

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->u(Ljava/util/LinkedList;I)V

    .line 20
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->S:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->c:I

    .line 21
    iget p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->d:I

    add-int/2addr p1, v1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->d:I

    goto/16 :goto_5

    .line 22
    :pswitch_5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->R:Ljava/util/LinkedList;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->M:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 23
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->R:Ljava/util/LinkedList;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->M:I

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->u(Ljava/util/LinkedList;I)V

    .line 24
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->R:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->K:I

    .line 25
    iget p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->L:I

    add-int/2addr p1, v1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->L:I

    goto/16 :goto_5

    .line 26
    :pswitch_6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->Q:Ljava/util/LinkedList;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->M:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 27
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->Q:Ljava/util/LinkedList;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->M:I

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->u(Ljava/util/LinkedList;I)V

    .line 28
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->Q:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->q:I

    .line 29
    iget p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->u:I

    add-int/2addr p1, v1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->u:I

    .line 30
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->b()V

    goto/16 :goto_5

    .line 31
    :pswitch_7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->P:Ljava/util/LinkedList;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->M:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 32
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->P:Ljava/util/LinkedList;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->M:I

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->u(Ljava/util/LinkedList;I)V

    .line 33
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->P:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->p:I

    .line 34
    iget p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->t:I

    add-int/2addr p1, v1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->t:I

    .line 35
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->b()V

    goto/16 :goto_5

    .line 36
    :pswitch_8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->N:Ljava/util/LinkedList;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->M:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->N:Ljava/util/LinkedList;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->M:I

    invoke-direct {p0, v0, v2}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->u(Ljava/util/LinkedList;I)V

    .line 38
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->N:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->m:I

    .line 39
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->r:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->r:I

    .line 40
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x3e8

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v3, 0x1f4

    const/4 v4, 0x0

    const/16 v5, 0xbb8

    if-ge v0, v3, :cond_0

    .line 41
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->I:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->I:I

    goto :goto_0

    .line 42
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    sub-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v3, :cond_1

    .line 43
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->J:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->J:I

    goto :goto_0

    .line 44
    :cond_1
    iput v4, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->I:I

    .line 45
    iput v4, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->J:I

    .line 46
    :goto_0
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->I:I

    const/4 v3, 0x4

    if-le v0, v3, :cond_2

    .line 47
    iput v2, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->H:I

    goto :goto_1

    .line 48
    :cond_2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->J:I

    if-le v0, v3, :cond_3

    .line 49
    iput v5, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->H:I

    .line 50
    :cond_3
    :goto_1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->H:I

    if-ne v0, v2, :cond_5

    .line 51
    sget v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->Z:I

    mul-int/lit8 v0, v0, 0x3c

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->n:I

    .line 52
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-le p1, v5, :cond_7

    .line 53
    div-int/2addr p1, v2

    :goto_2
    if-ge v4, p1, :cond_4

    .line 54
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->O:Ljava/util/LinkedList;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->M:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 55
    :cond_4
    iget p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->s:I

    add-int/2addr p1, v1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->s:I

    goto :goto_4

    :cond_5
    if-ne v0, v5, :cond_7

    .line 56
    sget v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->Z:I

    mul-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->n:I

    .line 57
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/16 v0, 0x1388

    if-le p1, v0, :cond_7

    .line 58
    div-int/2addr p1, v5

    :goto_3
    if-ge v4, p1, :cond_6

    .line 59
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->O:Ljava/util/LinkedList;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->M:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 60
    :cond_6
    iget p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->s:I

    add-int/2addr p1, v1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->s:I

    .line 61
    :cond_7
    :goto_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->O:Ljava/util/LinkedList;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->M:I

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->u(Ljava/util/LinkedList;I)V

    .line 62
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->O:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->o:I

    .line 63
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->b()V

    goto/16 :goto_5

    .line 64
    :pswitch_9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->Y:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 65
    iget p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->M:I

    add-int/2addr p1, v1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->M:I

    .line 66
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->N:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p1}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->u(Ljava/util/LinkedList;I)V

    .line 67
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->P:Ljava/util/LinkedList;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->M:I

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->u(Ljava/util/LinkedList;I)V

    .line 68
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->O:Ljava/util/LinkedList;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->M:I

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->u(Ljava/util/LinkedList;I)V

    .line 69
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->Q:Ljava/util/LinkedList;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->M:I

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->u(Ljava/util/LinkedList;I)V

    .line 70
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->R:Ljava/util/LinkedList;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->M:I

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->u(Ljava/util/LinkedList;I)V

    .line 71
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->T:Ljava/util/LinkedList;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->M:I

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->u(Ljava/util/LinkedList;I)V

    .line 72
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->S:Ljava/util/LinkedList;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->M:I

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->u(Ljava/util/LinkedList;I)V

    .line 73
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->U:Ljava/util/LinkedList;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->M:I

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->u(Ljava/util/LinkedList;I)V

    .line 74
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->V:Ljava/util/LinkedList;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->M:I

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->u(Ljava/util/LinkedList;I)V

    .line 75
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->W:Ljava/util/LinkedList;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->M:I

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->u(Ljava/util/LinkedList;I)V

    .line 76
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->R:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->K:I

    .line 77
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->N:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->m:I

    .line 78
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->O:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->o:I

    .line 79
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->P:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->p:I

    .line 80
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->Q:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->q:I

    .line 81
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->T:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->e:I

    .line 82
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->S:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->c:I

    .line 83
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->U:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->k:I

    .line 84
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->V:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->g:I

    .line 85
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->W:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->i:I

    .line 86
    sget p1, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->Z:I

    mul-int/lit8 p1, p1, 0x3c

    .line 87
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->M:I

    rem-int p1, v0, p1

    if-nez p1, :cond_8

    if-lez v0, :cond_8

    .line 88
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->c()Ljava/lang/String;

    :cond_8
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private u(Ljava/util/LinkedList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, p2, v0

    sget v1, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->Z:I

    mul-int/lit8 v1, v1, 0x3c

    if-le v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 22

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u603b\u65f6\u957f:"

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->M:I

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u5206\u949f,\u603b\u63a5\u6536\u5dee\u5206\u6570\u636e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\u603b\u63a5\u6536gps\u6570\u636e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->L:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "<br/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u65ad\u5f00\u8fde\u63a5\u6b21\u6570\u4ec5\u4f5c\u53c2\u8003<br/>"

    .line 3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    sget v3, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->Z:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u5206\u949f\u5185\u670d\u52a1\u8fde\u63a5\u65ad\u5f00\u6b21\u6570:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->c:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u5168\u7a0b\u670d\u52a1\u8fde\u63a5\u65ad\u5f00\u6b21\u6570:"

    .line 5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->d:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u5206\u949f\u5185\u56fa\u4ef6\u8fde\u63a5\u65ad\u5f00\u6b21\u6570:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->e:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u5168\u7a0b\u56fa\u4ef6\u8fde\u63a5\u65ad\u5f00\u6b21\u6570:"

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->a:Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;->isSuccess()Z

    move-result v4

    const-string v6, "<font color=\'#ff0000\'><b>!!!"

    if-eqz v4, :cond_0

    const-string v4, "\u5f53\u524d\u548c\u670d\u52a1\u5668\u8fde\u63a5\u72b6\u6001:\u6b63\u5e38<br/>"

    .line 9
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u5f53\u524d\u548c\u670d\u52a1\u5668\u8fde\u63a5\u72b6\u6001:\u65ad\u5f00</b></font><br/>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    .line 11
    :goto_0
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->b:Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;

    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;->isSuccess()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "\u5f53\u524d\u548c\u56fa\u4ef6\u8fde\u63a5\u72b6\u6001:\u6b63\u5e38<br/>"

    .line 12
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u5f53\u524d\u548c\u56fa\u4ef6\u8fde\u63a5\u72b6\u6001:\u65ad\u5f00</b></font><br/>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    .line 14
    :goto_1
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->b:Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;

    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;->isSuccess()Z

    move-result v7

    const-wide/16 v8, 0x0

    const/16 v10, 0x14

    const/4 v11, 0x4

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    const-string v14, "</b></font><br/>"

    if-eqz v7, :cond_8

    const-string v7, "\u536b\u661f\u6570:"

    .line 15
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->D:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v7, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->D:I

    if-ge v7, v10, :cond_2

    .line 17
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u536b\u661f\u6570\u8fc7\u5c11"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    :cond_2
    const-string v7, "\u5b9a\u4f4d\u72b6\u6001:"

    .line 18
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->B:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget v7, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->B:I

    if-eq v7, v11, :cond_3

    .line 20
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u5b9a\u4f4d\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u5468\u56f4\u662f\u5426\u6709\u906e\u6321\uff0c\u6216\u8005\u5929\u7ebf\u662f\u5426\u63a5\u89e6\u4e0d\u826f</b></font><br/>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    .line 21
    :cond_3
    sget-object v7, Lcn/mucang/android/jiakaoyi/framework/e/o;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    const/16 v15, 0x23

    if-lez v7, :cond_4

    .line 22
    iget v5, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->D:I

    if-lez v5, :cond_4

    const-string v5, "\u5b9a\u4f4d\u536b\u661f\u6570:"

    .line 23
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v7, v15, :cond_4

    .line 24
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u5b9a\u4f4d\u536b\u661f\u6570\u8fc7\u5c11\uff0c\u8bf7\u68c0\u67e5\u5468\u56f4\u73af\u5883\u662f\u5426\u6709\u906e\u6321\uff0c\u6216\u8005\u8f66\u8f86\u5468\u56f4\u662f\u5426\u6709\u5e72\u6270\u5668</b></font><br/>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    :cond_4
    const-string v5, "\u5b9a\u5411\u72b6\u6001:"

    .line 25
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->C:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v5, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->C:I

    if-eq v5, v11, :cond_5

    .line 27
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u5b9a\u5411\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u5468\u56f4\u662f\u5426\u6709\u906e\u6321\uff0c\u6216\u8005\u5929\u7ebf\u662f\u5426\u63a5\u89e6\u4e0d\u826f</b></font><br/>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    .line 28
    :cond_5
    sget-object v5, Lcn/mucang/android/jiakaoyi/framework/e/o;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-lez v5, :cond_6

    .line 29
    iget v7, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->D:I

    if-lez v7, :cond_6

    const-string v7, "\u5b9a\u5411\u536b\u661f\u6570:"

    .line 30
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v5, v15, :cond_6

    .line 31
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u5b9a\u5411\u536b\u661f\u6570\u8fc7\u5c11\uff0c\u8bf7\u68c0\u67e5\u5468\u56f4\u73af\u5883\u662f\u5426\u6709\u906e\u6321\uff0c\u6216\u8005\u8f66\u8f86\u5468\u56f4\u662f\u5426\u6709\u5e72\u6270\u5668</b></font><br/>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    :cond_6
    const-string v5, "\u4e3b\u4ece\u5929\u7ebf\u8ddd\u79bb:"

    .line 32
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->E:D

    mul-double v10, v10, v12

    double-to-int v10, v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->F:D

    mul-double v10, v10, v12

    double-to-int v10, v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-wide v10, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->F:D

    cmpl-double v15, v10, v8

    if-lez v15, :cond_8

    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->E:D

    sub-double/2addr v7, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v10, 0x3fa999999999999aL    # 0.05

    cmpl-double v15, v7, v10

    if-lez v15, :cond_8

    .line 34
    iget v4, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->B:I

    const/4 v7, 0x4

    if-ne v4, v7, :cond_7

    iget v4, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->C:I

    if-ne v4, v7, :cond_7

    .line 35
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u5929\u7ebf\u8ddd\u79bb\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u8f66\u8eab\u6570\u636e\u662f\u5426\u9519\u8bef\u6216\u8005\u4e0e\u672c\u8f66\u4e0d\u5339\u914d"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 36
    :cond_7
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u5929\u7ebf\u8ddd\u79bb\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u4ece\u5929\u7ebf\u662f\u5426\u63a5\u89e6\u4e0d\u826f\uff0c\u6216\u8005\u8f66\u9876\u662f\u5426\u6709\u906e\u6321"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const/4 v4, 0x1

    :cond_8
    const-string v8, "\u57fa\u7ad9:"

    .line 37
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->z:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\uff0c"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->G:Z

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->A:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v8, :cond_9

    iget-boolean v8, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->G:Z

    if-eqz v8, :cond_9

    .line 39
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->g()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v8

    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->A:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)D

    move-result-wide v8

    const-wide v10, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v8, v8, v10

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    mul-double v8, v8, v10

    double-to-int v8, v8

    int-to-double v8, v8

    div-double/2addr v8, v10

    const-string v15, "\u57fa\u7ad9\u8ddd\u79bb:"

    .line 40
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v15, "\u516c\u91cc<br/>"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpl-double v15, v8, v10

    if-lez v15, :cond_9

    .line 41
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u8f66\u8f86\u8ddd\u79bb\u57fa\u7ad9\u8fc7\u8fdc</b></font><br/>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    .line 42
    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\u5206\u949f\u5185\u5b9a\u4f4d\u975e4\u6b21\u6570:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->g:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget v8, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->g:I

    const/16 v9, 0x32

    if-le v8, v9, :cond_a

    .line 44
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u5206\u949f\u5185\u5b9a\u4f4d\u975e4\u72b6\u6001\u6b21\u6570\u8f83\u591a"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    .line 45
    :cond_a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\u5206\u949f\u5185\u5b9a\u5411\u975e4\u6b21\u6570:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->i:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v8, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->i:I

    if-le v8, v9, :cond_b

    .line 47
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u5206\u949f\u5185\u5b9a\u5411\u975e4\u72b6\u6001\u6b21\u6570\u8f83\u591a"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    .line 48
    :cond_b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\u5206\u949f\u5185\u5dee\u5206\u6570\u636e\u6570:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->m:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\uff0c\u5e94\u63a5\u6536\u5dee\u5206\u6570\u636e:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->n:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget v8, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->n:I

    if-lez v8, :cond_c

    iget v9, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->m:I

    sub-int/2addr v8, v9

    const/16 v9, 0x9

    if-le v8, v9, :cond_c

    .line 50
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u5206\u949f\u5185\u5dee\u5206\u6570\u636e\u6f0f\u63a5\u6570\u8f83\u591a:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->m:I

    iget v8, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->n:I

    sub-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const/4 v4, 0x1

    goto :goto_4

    .line 51
    :cond_c
    iget v8, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->m:I

    if-nez v8, :cond_d

    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->a:Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;

    invoke-virtual {v8}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;->isSuccess()Z

    move-result v8

    if-eqz v8, :cond_d

    iget-boolean v8, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->G:Z

    if-eqz v8, :cond_d

    .line 52
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u6ca1\u6709\u5dee\u5206\u6570\u636e\uff0c\u53ef\u80fd\u662f\u57fa\u7ad9\u914d\u7f6e\u6709\u95ee\u9898\uff0c\u6216\u8005\u57fa\u7ad9\u88ab\u5173\u95ed"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 53
    :cond_d
    :goto_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\u5206\u949f\u5185\u4e0b\u53d1\u5dee\u5206\u6570\u636e:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->p:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget v8, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->m:I

    iget v9, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->p:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->n:I

    const/4 v7, 0x4

    div-int/2addr v9, v7

    const/4 v7, 0x5

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v9

    if-le v8, v9, :cond_e

    .line 55
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u5206\u949f\u5185\u5dee\u5206\u6570\u636e\u6f0f\u53d1\u8f83\u591a\uff0c\u8bf7\u68c0\u67e5\u5e73\u677f\u548c\u63a7\u5236\u76d2\u7684\u4e32\u53e3\u7ebf\u662f\u5426\u63a5\u89e6\u4e0d\u826f</b></font><br/>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    .line 56
    :cond_e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\u5206\u949f\u5185\u4e0b\u53d1\u5dee\u5206\u54cd\u5e94\u6570\u636e:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->q:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\u5206\u949f\u5185\u5dee\u5206\u6570\u636e\u4e0b\u53d1\u6548\u7387:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->v:D

    mul-double v8, v8, v12

    double-to-int v8, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "%<br/>"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-wide v9, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->v:D

    const-wide v18, 0x3fe999999999999aL    # 0.8

    const-string v11, ",\u6f0f\u53d1\u6570\u91cf\u4e3a:"

    cmpg-double v15, v9, v18

    if-gez v15, :cond_f

    const-wide/16 v16, 0x0

    cmpl-double v15, v9, v16

    if-eqz v15, :cond_f

    .line 59
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u5206\u949f\u5185\u5dee\u5206\u6570\u636e\u63a5\u6536\u4e0b\u53d1\u4e0d\u6b63\u5e38\uff0c\u5e94\u4e0b\u53d1\u6570\u4e3a:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->m:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->m:I

    iget v9, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->q:I

    sub-int/2addr v4, v9

    .line 60
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    .line 61
    :cond_f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "\u5206\u949f\u5185\u5dee\u5206\u6570\u636e\u5ef6\u8fdf\u7387:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->x:D

    mul-double v9, v9, v12

    double-to-int v9, v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-wide v9, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->x:D

    const-wide v20, 0x3fb999999999999aL    # 0.1

    cmpl-double v15, v9, v20

    if-gtz v15, :cond_10

    iget v9, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->o:I

    if-le v9, v7, :cond_11

    .line 63
    :cond_10
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u5206\u949f\u5185\u5dee\u5206\u6570\u636e\u5ef6\u8fdf\u6570\u8f83\u591a:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->o:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    .line 64
    :cond_11
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "\u5206\u949f\u5185\u7a7aGPS\u6570\u636e:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->k:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget v9, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->k:I

    mul-int/lit8 v10, v3, 0x3c

    if-le v9, v10, :cond_12

    .line 66
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u5206\u949f\u5185\u7a7aGPS\u6570\u636e\u8f83\u591a\uff0c\u53ef\u80fd\u662f\u8611\u83c7\u5934\u63a5\u7ebf\u4e0d\u597d\uff0c\u6216\u8005\u9644\u8fd1\u5e72\u6270\u4e25\u91cd</b></font><br/>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    .line 67
    :cond_12
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "\u5206\u949f\u5185\u63a5\u6536GPS\u6570\u636e:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->K:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget v9, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->K:I

    mul-int/lit8 v10, v3, 0x3c

    mul-int/lit8 v10, v10, 0x5

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/16 v5, 0x14

    if-le v7, v5, :cond_13

    iget v7, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->K:I

    mul-int/lit8 v9, v3, 0x3c

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v7, v5, :cond_13

    .line 69
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u5206\u949f\u5185\u63a5\u6536GPS\u6570\u636e\u5f02\u5e38\uff0c\u53ef\u80fd\u662f\u5929\u7ebf\u63a5\u89e6\u4e0d\u826f\u3001\u6216\u6d41\u52a8\u7ad9\u6545\u969c\uff1b\u8bf7\u91cd\u542f\u8bbe\u5907\u6216\u8005\u63d2\u62d4\u5929\u7ebf\u5c1d\u8bd5\u6062\u590d</b></font><br/>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    :cond_13
    const-string v3, "\u5168\u7a0b\u5b9a\u4f4d\u975e4\u6b21\u6570:"

    .line 70
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->h:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u5168\u7a0b\u5b9a\u5411\u975e4\u6b21\u6570:"

    .line 71
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->j:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u5168\u7a0b\u7a7aGPS\u6570\u636e:"

    .line 72
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->l:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u5168\u7a0b\u63a5\u6536\u5dee\u5206\u6570\u636e:"

    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->r:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u5168\u7a0b\u4e0b\u53d1\u5dee\u5206\u6570\u636e:"

    .line 74
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->t:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u5168\u7a0b\u4e0b\u53d1\u5dee\u5206\u54cd\u5e94\u6570\u636e:"

    .line 75
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->u:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5dee\u5206\u6570\u636e\u4e0b\u53d1\u603b\u6548\u7387:"

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->w:D

    mul-double v2, v2, v12

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->w:D

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    cmpg-double v5, v2, v9

    if-gez v5, :cond_14

    iget v5, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->t:I

    if-lez v5, :cond_14

    .line 78
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5168\u7a0b\u5dee\u5206\u6570\u636e\u63a5\u6536\u4e0b\u53d1\u4e25\u91cd\u4e0d\u6b63\u5e38\uff0c\u5e94\u4e0b\u53d1\u6570\u4e3a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->r:I

    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->u:I

    sub-int/2addr v2, v3

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\uff0c\u8bf7\u68c0\u67e5\u5e73\u677f\u4e32\u53e3\u7ebf\u3001\u63a7\u5236\u76d2\u548c\u6d41\u52a8\u7ad9\u4e32\u53e3\u7ebf\u7b49\u662f\u5426\u63a5\u89e6\u4e0d\u826f</b></font><br/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    const/4 v4, 0x1

    goto :goto_6

    :cond_14
    cmpg-double v5, v2, v18

    if-gez v5, :cond_15

    const-wide/16 v9, 0x0

    cmpl-double v5, v2, v9

    if-eqz v5, :cond_15

    .line 80
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5168\u7a0b\u5dee\u5206\u6570\u636e\u63a5\u6536\u4e0b\u53d1\u4e0d\u6b63\u5e38\uff0c\u6b63\u5e38\u4e0b\u53d1\u6570\u4e3a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->t:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->r:I

    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->u:I

    sub-int/2addr v2, v3

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_15
    :goto_6
    const-string v2, "\u5168\u7a0b\u5dee\u5206\u6570\u636e\u5ef6\u8fdf\u7387:"

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->y:D

    mul-double v2, v2, v12

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->y:D

    cmpl-double v5, v2, v20

    if-lez v5, :cond_16

    .line 84
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5168\u7a0b\u5dee\u5206\u6570\u636e\u5ef6\u8fdf\u6570\u8f83\u591a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%</b></font><br/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    goto :goto_7

    :cond_16
    move v5, v4

    .line 85
    :goto_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v5, :cond_17

    .line 86
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v2

    if-nez v2, :cond_17

    .line 87
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->h(Ljava/lang/Object;)V

    :cond_17
    return-object v1
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->Y:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public e(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;->Success:Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;->Failure:Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;

    :goto_0
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->b:Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;

    if-nez p1, :cond_1

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->B:I

    .line 3
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->C:I

    .line 4
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->D:I

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->Y:Landroid/os/Handler;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->Y:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public i(I)V
    .locals 3

    if-gez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->Y:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->Y:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->Y:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public l(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;->Success:Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;->Failure:Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;

    :goto_0
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->a:Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis$ConnectionState;

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->Y:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public m(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->C:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->Y:Landroid/os/Handler;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public n(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->E:D

    return-void
.end method

.method public o(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->B:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->Y:Landroid/os/Handler;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public p(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->D:I

    return-void
.end method

.method public q(D)V
    .locals 1

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->F:D

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->a0:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    double-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public r(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->A:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bbe\u7f6e\u57fa\u7ad9\u5750\u6807:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->z:Ljava/lang/String;

    return-void
.end method

.method public t(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->G:Z

    return-void
.end method
