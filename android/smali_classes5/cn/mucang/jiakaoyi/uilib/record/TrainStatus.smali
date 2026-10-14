.class public final enum Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;",
        "",
        "type",
        "",
        "statusName",
        "",
        "(Ljava/lang/String;IILjava/lang/String;)V",
        "getStatusName",
        "()Ljava/lang/String;",
        "getType",
        "()I",
        "start",
        "going",
        "finish",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;

.field public static final enum finish:Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;

.field public static final enum going:Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;

.field public static final enum start:Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;


# instance fields
.field private final statusName:Ljava/lang/String;

.field private final type:I


# direct methods
.method private static final synthetic $values()[Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;->start:Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;->going:Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;->finish:Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;

    const-string v1, "start"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v1}, Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;->start:Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;

    const-string v1, "going"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2, v1}, Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;->going:Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;

    const-string v1, "finish"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3, v1}, Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;->finish:Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;

    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;->$values()[Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;

    move-result-object v0

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;->$VALUES:[Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;->type:I

    iput-object p4, p0, Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;->statusName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;
    .locals 1

    const-class v0, Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;

    return-object p0
.end method

.method public static values()[Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;
    .locals 1

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;->$VALUES:[Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;

    return-object v0
.end method


# virtual methods
.method public final getStatusName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;->statusName:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/record/TrainStatus;->type:I

    return v0
.end method
