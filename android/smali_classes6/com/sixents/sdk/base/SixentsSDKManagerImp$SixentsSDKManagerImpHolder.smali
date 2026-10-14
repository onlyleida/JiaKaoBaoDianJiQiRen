.class Lcom/sixents/sdk/base/SixentsSDKManagerImp$SixentsSDKManagerImpHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sixents/sdk/base/SixentsSDKManagerImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SixentsSDKManagerImpHolder"
.end annotation


# static fields
.field private static INSTANCE:Lcom/sixents/sdk/base/SixentsSDKManagerImp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sixents/sdk/base/SixentsSDKManagerImp;-><init>(Lcom/sixents/sdk/base/SixentsSDKManagerImp$1;)V

    sput-object v0, Lcom/sixents/sdk/base/SixentsSDKManagerImp$SixentsSDKManagerImpHolder;->INSTANCE:Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/sixents/sdk/base/SixentsSDKManagerImp;
    .locals 1

    .line 1
    sget-object v0, Lcom/sixents/sdk/base/SixentsSDKManagerImp$SixentsSDKManagerImpHolder;->INSTANCE:Lcom/sixents/sdk/base/SixentsSDKManagerImp;

    return-object v0
.end method
