.class public final enum Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/msc/ist/AudioAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioKeys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;

.field public static final enum BIT:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;

.field public static final enum CHANNEL:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;

.field public static final enum FORMAT:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;

.field public static final enum RATE:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;

    const-string v1, "CHANNEL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;->CHANNEL:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;

    new-instance v1, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;

    const-string v3, "FORMAT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;->FORMAT:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;

    new-instance v3, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;

    const-string v5, "BIT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;->BIT:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;

    new-instance v5, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;

    const-string v7, "RATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;->RATE:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 2
    sput-object v7, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;->$VALUES:[Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;
    .locals 1

    .line 1
    const-class v0, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;

    return-object p0
.end method

.method public static values()[Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;
    .locals 1

    .line 1
    sget-object v0, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;->$VALUES:[Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;

    invoke-virtual {v0}, [Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;

    return-object v0
.end method
