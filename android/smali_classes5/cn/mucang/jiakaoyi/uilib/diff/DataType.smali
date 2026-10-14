.class public final enum Lcn/mucang/jiakaoyi/uilib/diff/DataType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/jiakaoyi/uilib/diff/DataType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/diff/DataType;",
        "",
        "type",
        "",
        "typeName",
        "",
        "(Ljava/lang/String;IILjava/lang/String;)V",
        "getType",
        "()I",
        "getTypeName",
        "()Ljava/lang/String;",
        "DEDUCT",
        "RULE",
        "ROUTE",
        "LIGHT_MODEL",
        "LIGHT_GROUP",
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
.field private static final synthetic $VALUES:[Lcn/mucang/jiakaoyi/uilib/diff/DataType;

.field public static final enum DEDUCT:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

.field public static final enum LIGHT_GROUP:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

.field public static final enum LIGHT_MODEL:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

.field public static final enum ROUTE:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

.field public static final enum RULE:Lcn/mucang/jiakaoyi/uilib/diff/DataType;


# instance fields
.field private final type:I

.field private final typeName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcn/mucang/jiakaoyi/uilib/diff/DataType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->DEDUCT:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->RULE:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->ROUTE:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->LIGHT_MODEL:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->LIGHT_GROUP:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    const-string v1, "DEDUCT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "\u6263\u5206"

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->DEDUCT:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    const-string v1, "RULE"

    const/4 v2, 0x2

    const-string v4, "\u89c4\u5219"

    invoke-direct {v0, v1, v3, v2, v4}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->RULE:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    const-string v1, "ROUTE"

    const/4 v3, 0x4

    const-string v4, "\u7ebf\u8def"

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->ROUTE:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    const-string v1, "LIGHT_MODEL"

    const/4 v2, 0x3

    const/4 v4, 0x6

    const-string v5, "\u706f\u5149\u6307\u4ee4"

    invoke-direct {v0, v1, v2, v4, v5}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->LIGHT_MODEL:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    const-string v1, "LIGHT_GROUP"

    const/4 v2, 0x7

    const-string v4, "\u706f\u5149\u7ec4\u5408"

    invoke-direct {v0, v1, v3, v2, v4}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->LIGHT_GROUP:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->$values()[Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    move-result-object v0

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->$VALUES:[Lcn/mucang/jiakaoyi/uilib/diff/DataType;

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

    .line 2
    iput p3, p0, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->type:I

    iput-object p4, p0, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->typeName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/jiakaoyi/uilib/diff/DataType;
    .locals 1

    const-class v0, Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    return-object p0
.end method

.method public static values()[Lcn/mucang/jiakaoyi/uilib/diff/DataType;
    .locals 1

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->$VALUES:[Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    return-object v0
.end method


# virtual methods
.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->type:I

    return v0
.end method

.method public final getTypeName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->typeName:Ljava/lang/String;

    return-object v0
.end method
