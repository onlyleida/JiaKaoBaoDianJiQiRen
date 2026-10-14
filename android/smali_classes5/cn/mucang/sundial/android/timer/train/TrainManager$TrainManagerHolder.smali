.class Lcn/mucang/sundial/android/timer/train/TrainManager$TrainManagerHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/android/timer/train/TrainManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrainManagerHolder"
.end annotation


# static fields
.field private static final sManager:Lcn/mucang/sundial/android/timer/train/TrainManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/timer/train/TrainManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/sundial/android/timer/train/TrainManager;-><init>(Lcn/mucang/sundial/android/timer/train/TrainManager$1;)V

    sput-object v0, Lcn/mucang/sundial/android/timer/train/TrainManager$TrainManagerHolder;->sManager:Lcn/mucang/sundial/android/timer/train/TrainManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcn/mucang/sundial/android/timer/train/TrainManager;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/timer/train/TrainManager$TrainManagerHolder;->sManager:Lcn/mucang/sundial/android/timer/train/TrainManager;

    return-object v0
.end method
