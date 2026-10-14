.class Lcn/mucang/sundial/android/timer/alive/HeartBeatManager$HeartBeatManagerHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeartBeatManagerHolder"
.end annotation


# static fields
.field private static final sManager:Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;-><init>(Lcn/mucang/sundial/android/timer/alive/HeartBeatManager$1;)V

    sput-object v0, Lcn/mucang/sundial/android/timer/alive/HeartBeatManager$HeartBeatManagerHolder;->sManager:Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/timer/alive/HeartBeatManager$HeartBeatManagerHolder;->sManager:Lcn/mucang/sundial/android/timer/alive/HeartBeatManager;

    return-object v0
.end method
