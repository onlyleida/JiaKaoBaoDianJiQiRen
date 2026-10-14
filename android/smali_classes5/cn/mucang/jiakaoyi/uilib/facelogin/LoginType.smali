.class public final enum Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0087\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;",
        "",
        "type",
        "",
        "(Ljava/lang/String;II)V",
        "getType",
        "()I",
        "SCAN",
        "BODY_CARD",
        "FACE",
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
.field private static final synthetic $VALUES:[Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;

.field public static final enum BODY_CARD:Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;

.field public static final enum FACE:Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;

.field public static final enum SCAN:Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;


# instance fields
.field private final type:I


# direct methods
.method private static final synthetic $values()[Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;->SCAN:Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;->BODY_CARD:Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;->FACE:Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;

    const-string v1, "SCAN"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;->SCAN:Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;

    const-string v1, "BODY_CARD"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v4}, Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;->BODY_CARD:Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;

    const-string v1, "FACE"

    invoke-direct {v0, v1, v3, v2}, Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;->FACE:Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;

    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;->$values()[Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;

    move-result-object v0

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;->$VALUES:[Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;
    .locals 1

    const-class v0, Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;

    return-object p0
.end method

.method public static values()[Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;
    .locals 1

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;->$VALUES:[Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;

    return-object v0
.end method


# virtual methods
.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/facelogin/LoginType;->type:I

    return v0
.end method
