.class Lcn/mucang/sundial/android/db/SundialLogDb$SundialDbHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/android/db/SundialLogDb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SundialDbHolder"
.end annotation


# static fields
.field private static final sInstance:Lcn/mucang/sundial/android/db/SundialLogDb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/db/SundialLogDb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/sundial/android/db/SundialLogDb;-><init>(Lcn/mucang/sundial/android/db/SundialLogDb$1;)V

    sput-object v0, Lcn/mucang/sundial/android/db/SundialLogDb$SundialDbHolder;->sInstance:Lcn/mucang/sundial/android/db/SundialLogDb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcn/mucang/sundial/android/db/SundialLogDb;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/db/SundialLogDb$SundialDbHolder;->sInstance:Lcn/mucang/sundial/android/db/SundialLogDb;

    return-object v0
.end method
