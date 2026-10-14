.class final enum Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/msc/ist/AudioAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AccesserType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

.field public static final enum BUFFER:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

.field public static final enum READ_ONLY:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

.field public static final enum WRITE_READ:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    const-string v1, "WRITE_READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;->WRITE_READ:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    .line 2
    new-instance v1, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    const-string v3, "READ_ONLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;->READ_ONLY:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    .line 3
    new-instance v3, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    const-string v5, "BUFFER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;->BUFFER:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;->$VALUES:[Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;
    .locals 1

    .line 1
    const-class v0, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    return-object p0
.end method

.method public static values()[Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;
    .locals 1

    .line 1
    sget-object v0, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;->$VALUES:[Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    invoke-virtual {v0}, [Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    return-object v0
.end method
