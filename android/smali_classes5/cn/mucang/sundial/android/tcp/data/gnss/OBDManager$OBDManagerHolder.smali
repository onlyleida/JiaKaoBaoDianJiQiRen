.class Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager$OBDManagerHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OBDManagerHolder"
.end annotation


# static fields
.field private static final sManager:Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;-><init>(Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager$1;)V

    sput-object v0, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager$OBDManagerHolder;->sManager:Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager$OBDManagerHolder;->sManager:Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;

    return-object v0
.end method
