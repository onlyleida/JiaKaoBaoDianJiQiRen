.class public final enum Lcn/mucang/android/account/api/data/Gender;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/account/api/data/Gender;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/account/api/data/Gender;

.field public static final enum Female:Lcn/mucang/android/account/api/data/Gender;

.field public static final enum Male:Lcn/mucang/android/account/api/data/Gender;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/android/account/api/data/Gender;

    const-string v1, "Male"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/account/api/data/Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/account/api/data/Gender;->Male:Lcn/mucang/android/account/api/data/Gender;

    new-instance v1, Lcn/mucang/android/account/api/data/Gender;

    const-string v3, "Female"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/mucang/android/account/api/data/Gender;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/mucang/android/account/api/data/Gender;->Female:Lcn/mucang/android/account/api/data/Gender;

    const/4 v3, 0x2

    new-array v3, v3, [Lcn/mucang/android/account/api/data/Gender;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 2
    sput-object v3, Lcn/mucang/android/account/api/data/Gender;->$VALUES:[Lcn/mucang/android/account/api/data/Gender;

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

.method public static from(Ljava/lang/String;)Lcn/mucang/android/account/api/data/Gender;
    .locals 6

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/android/account/api/data/Gender;->values()[Lcn/mucang/android/account/api/data/Gender;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 3
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/account/api/data/Gender;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/account/api/data/Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/account/api/data/Gender;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/account/api/data/Gender;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/account/api/data/Gender;->$VALUES:[Lcn/mucang/android/account/api/data/Gender;

    invoke-virtual {v0}, [Lcn/mucang/android/account/api/data/Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/account/api/data/Gender;

    return-object v0
.end method
