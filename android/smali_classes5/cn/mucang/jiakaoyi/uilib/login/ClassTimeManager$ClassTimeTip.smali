.class public final enum Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClassTimeTip"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0005R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;",
        "",
        "tip",
        "",
        "time",
        "",
        "gap",
        "",
        "(Ljava/lang/String;ILjava/lang/String;JI)V",
        "getTime",
        "()J",
        "getTip",
        "()Ljava/lang/String;",
        "nearTime",
        "",
        "remainTime",
        "Ten",
        "Five",
        "NearOver",
        "Over",
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
.field private static final synthetic $VALUES:[Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;

.field public static final enum Five:Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;

.field public static final enum NearOver:Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;

.field public static final enum Over:Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;

.field public static final enum Ten:Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;


# instance fields
.field private final gap:I

.field private final time:J

.field private final tip:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;->Ten:Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;->Five:Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;->NearOver:Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;->Over:Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v7, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;

    const-string v1, "Ten"

    const/4 v2, 0x0

    const-string v3, "\u9884\u7ea6\u8bfe\u65f6\u5c06\u572810\u5206\u949f\u540e\u7ed3\u675f\uff0c\u8bf7\u5728\u9a7e\u8003\u5b9d\u5178\u7eed\u7ea6!"

    const-wide/32 v4, 0x927c0

    const/16 v6, 0x7d0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;-><init>(Ljava/lang/String;ILjava/lang/String;JI)V

    sput-object v7, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;->Ten:Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;

    const-string v9, "Five"

    const/4 v10, 0x1

    const-string v11, "\u9884\u7ea6\u8bfe\u65f6\u5c06\u57285\u5206\u949f\u540e\u7ed3\u675f\uff0c\u8bf7\u5728\u9a7e\u8003\u5b9d\u5178\u7eed\u7ea6!"

    const-wide/32 v12, 0x493e0

    const/16 v14, 0x7d0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;-><init>(Ljava/lang/String;ILjava/lang/String;JI)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;->Five:Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;

    const-string v2, "NearOver"

    const/4 v3, 0x2

    const-string v4, "\u9884\u7ea6\u8bfe\u65f6\u5373\u5c06\u7ed3\u675f\uff0c\u5c06\u9000\u51fa\u767b\u5f55\uff0c\u5982\u9700\u4f7f\u7528\u8bf7\u7eed\u7ea6!"

    const-wide/16 v5, 0x7530

    const/16 v7, 0x7d0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;-><init>(Ljava/lang/String;ILjava/lang/String;JI)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;->NearOver:Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;

    .line 4
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;

    const-string v9, "Over"

    const/4 v10, 0x3

    const-string v11, ""

    const-wide/16 v12, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;-><init>(Ljava/lang/String;ILjava/lang/String;JI)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;->Over:Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;

    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;->$values()[Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;

    move-result-object v0

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;->$VALUES:[Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;->tip:Ljava/lang/String;

    iput-wide p4, p0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;->time:J

    iput p6, p0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;->gap:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;
    .locals 1

    const-class v0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;

    return-object p0
.end method

.method public static values()[Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;
    .locals 1

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;->$VALUES:[Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;

    return-object v0
.end method


# virtual methods
.method public final getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;->time:J

    return-wide v0
.end method

.method public final getTip()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;->tip:Ljava/lang/String;

    return-object v0
.end method

.method public final nearTime(J)Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;->time:J

    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;->gap:I

    int-to-long v2, v2

    sub-long v2, v0, v2

    const/4 v4, 0x0

    cmp-long v5, p1, v0

    if-gtz v5, :cond_0

    cmp-long v0, v2, p1

    if-gtz v0, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method
