.class final enum Lcn/mucang/android/account/AdminManager$ActionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/account/AdminManager$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/account/AdminManager$ActionType;

.field public static final enum CHANGED:Lcn/mucang/android/account/AdminManager$ActionType;

.field public static final enum LOGIN_SUCCEED:Lcn/mucang/android/account/AdminManager$ActionType;

.field public static final enum LOGOUT:Lcn/mucang/android/account/AdminManager$ActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcn/mucang/android/account/AdminManager$ActionType;

    const-string v1, "LOGIN_SUCCEED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/account/AdminManager$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/account/AdminManager$ActionType;->LOGIN_SUCCEED:Lcn/mucang/android/account/AdminManager$ActionType;

    new-instance v1, Lcn/mucang/android/account/AdminManager$ActionType;

    const-string v3, "LOGOUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/mucang/android/account/AdminManager$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/mucang/android/account/AdminManager$ActionType;->LOGOUT:Lcn/mucang/android/account/AdminManager$ActionType;

    new-instance v3, Lcn/mucang/android/account/AdminManager$ActionType;

    const-string v5, "CHANGED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/mucang/android/account/AdminManager$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/mucang/android/account/AdminManager$ActionType;->CHANGED:Lcn/mucang/android/account/AdminManager$ActionType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/mucang/android/account/AdminManager$ActionType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcn/mucang/android/account/AdminManager$ActionType;->$VALUES:[Lcn/mucang/android/account/AdminManager$ActionType;

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

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/account/AdminManager$ActionType;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/account/AdminManager$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/account/AdminManager$ActionType;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/account/AdminManager$ActionType;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/account/AdminManager$ActionType;->$VALUES:[Lcn/mucang/android/account/AdminManager$ActionType;

    invoke-virtual {v0}, [Lcn/mucang/android/account/AdminManager$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/account/AdminManager$ActionType;

    return-object v0
.end method
