.class Lcn/mucang/sundial/android/SundialManager$SundialManagerHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/android/SundialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SundialManagerHolder"
.end annotation


# static fields
.field private static final sManager:Lcn/mucang/sundial/android/SundialManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/SundialManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/sundial/android/SundialManager;-><init>(Lcn/mucang/sundial/android/SundialManager$1;)V

    sput-object v0, Lcn/mucang/sundial/android/SundialManager$SundialManagerHolder;->sManager:Lcn/mucang/sundial/android/SundialManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcn/mucang/sundial/android/SundialManager;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/SundialManager$SundialManagerHolder;->sManager:Lcn/mucang/sundial/android/SundialManager;

    return-object v0
.end method
