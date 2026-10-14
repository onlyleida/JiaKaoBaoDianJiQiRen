.class public final enum Lcom/annimon/stream/operator/ObjMerge$MergeResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/annimon/stream/operator/ObjMerge$MergeResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/annimon/stream/operator/ObjMerge$MergeResult;

.field public static final enum TAKE_FIRST:Lcom/annimon/stream/operator/ObjMerge$MergeResult;

.field public static final enum TAKE_SECOND:Lcom/annimon/stream/operator/ObjMerge$MergeResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/annimon/stream/operator/ObjMerge$MergeResult;

    const-string v1, "TAKE_FIRST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/annimon/stream/operator/ObjMerge$MergeResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/annimon/stream/operator/ObjMerge$MergeResult;->TAKE_FIRST:Lcom/annimon/stream/operator/ObjMerge$MergeResult;

    new-instance v1, Lcom/annimon/stream/operator/ObjMerge$MergeResult;

    const-string v3, "TAKE_SECOND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/annimon/stream/operator/ObjMerge$MergeResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/annimon/stream/operator/ObjMerge$MergeResult;->TAKE_SECOND:Lcom/annimon/stream/operator/ObjMerge$MergeResult;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/annimon/stream/operator/ObjMerge$MergeResult;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 2
    sput-object v3, Lcom/annimon/stream/operator/ObjMerge$MergeResult;->$VALUES:[Lcom/annimon/stream/operator/ObjMerge$MergeResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/annimon/stream/operator/ObjMerge$MergeResult;
    .locals 1

    .line 1
    const-class v0, Lcom/annimon/stream/operator/ObjMerge$MergeResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/annimon/stream/operator/ObjMerge$MergeResult;

    return-object p0
.end method

.method public static values()[Lcom/annimon/stream/operator/ObjMerge$MergeResult;
    .locals 1

    .line 1
    sget-object v0, Lcom/annimon/stream/operator/ObjMerge$MergeResult;->$VALUES:[Lcom/annimon/stream/operator/ObjMerge$MergeResult;

    invoke-virtual {v0}, [Lcom/annimon/stream/operator/ObjMerge$MergeResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/annimon/stream/operator/ObjMerge$MergeResult;

    return-object v0
.end method
