.class public final enum Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/login/model/LoginType$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0008\u0086\u0001\u0018\u0000 \u00112\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0011B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;",
        "",
        "desc",
        "",
        "typeId",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V",
        "getDesc",
        "()Ljava/lang/String;",
        "getTypeId",
        "ID_CARD",
        "QR_CODE",
        "FACE",
        "SWITCH_LOGIN",
        "MOBILE",
        "MOBILE_OR_IDCARD",
        "COACH_QR_CODE",
        "TAIZHOU",
        "Companion",
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
.field private static final synthetic $VALUES:[Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

.field public static final enum COACH_QR_CODE:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

.field public static final Companion:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType$a;

.field public static final enum FACE:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

.field public static final enum ID_CARD:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

.field public static final enum MOBILE:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

.field public static final enum MOBILE_OR_IDCARD:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

.field public static final enum QR_CODE:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

.field public static final enum SWITCH_LOGIN:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

.field public static final enum TAIZHOU:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;


# instance fields
.field private final desc:Ljava/lang/String;

.field private final typeId:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->ID_CARD:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->QR_CODE:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->FACE:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->SWITCH_LOGIN:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->MOBILE:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->MOBILE_OR_IDCARD:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->COACH_QR_CODE:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->TAIZHOU:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$string;->uilib_account_login:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.uilib_account_login)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "ID_CARD"

    const/4 v3, 0x0

    const-string v4, "1"

    invoke-direct {v0, v2, v3, v1, v4}, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->ID_CARD:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$string;->uilib_qr_code_login:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.uilib_qr_code_login)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "QR_CODE"

    const/4 v3, 0x1

    const-string v4, "2"

    invoke-direct {v0, v2, v3, v1, v4}, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->QR_CODE:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$string;->uilib_face_login:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.uilib_face_login)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "FACE"

    const/4 v3, 0x2

    const-string v4, "4"

    invoke-direct {v0, v2, v3, v1, v4}, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->FACE:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    .line 4
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$string;->uilib_switch_login:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.uilib_switch_login)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "SWITCH_LOGIN"

    const/4 v3, 0x3

    const-string v4, "5"

    invoke-direct {v0, v2, v3, v1, v4}, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->SWITCH_LOGIN:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    .line 5
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$string;->uilib_mobile_login:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.uilib_mobile_login)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "MOBILE"

    const/4 v3, 0x4

    const-string v4, "7"

    invoke-direct {v0, v2, v3, v1, v4}, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->MOBILE:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    .line 6
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$string;->uilib_mobile_or_idcard_login:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.uilib_mobile_or_idcard_login)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "MOBILE_OR_IDCARD"

    const/4 v3, 0x5

    const-string v4, "8"

    invoke-direct {v0, v2, v3, v1, v4}, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->MOBILE_OR_IDCARD:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    .line 7
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$string;->uilib_coach_qrcode_login:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.uilib_coach_qrcode_login)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "COACH_QR_CODE"

    const/4 v3, 0x6

    const-string v4, "9"

    invoke-direct {v0, v2, v3, v1, v4}, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->COACH_QR_CODE:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    .line 8
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$string;->uilib_taizhou_login:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.uilib_taizhou_login)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "TAIZHOU"

    const/4 v3, 0x7

    const-string v4, "6"

    invoke-direct {v0, v2, v3, v1, v4}, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->TAIZHOU:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->$values()[Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    move-result-object v0

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->$VALUES:[Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->Companion:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->desc:Ljava/lang/String;

    iput-object p4, p0, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->typeId:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;
    .locals 1

    const-class v0, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    return-object p0
.end method

.method public static values()[Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;
    .locals 1

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->$VALUES:[Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    return-object v0
.end method


# virtual methods
.method public final getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public final getTypeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->typeId:Ljava/lang/String;

    return-object v0
.end method
