.class public final enum Lcn/mucang/android/language/MucangLanguage;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/language/MucangLanguage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/language/MucangLanguage;

.field public static final enum UG:Lcn/mucang/android/language/MucangLanguage;


# instance fields
.field private country:Ljava/lang/String;

.field private language:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/android/language/MucangLanguage;

    const-string v1, "UG"

    const/4 v2, 0x0

    const-string v3, "ug"

    const-string v4, "CN"

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/language/MucangLanguage;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/language/MucangLanguage;->UG:Lcn/mucang/android/language/MucangLanguage;

    const/4 v1, 0x1

    new-array v1, v1, [Lcn/mucang/android/language/MucangLanguage;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lcn/mucang/android/language/MucangLanguage;->$VALUES:[Lcn/mucang/android/language/MucangLanguage;

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

    .line 2
    iput-object p3, p0, Lcn/mucang/android/language/MucangLanguage;->language:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcn/mucang/android/language/MucangLanguage;->country:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/language/MucangLanguage;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/language/MucangLanguage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/language/MucangLanguage;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/language/MucangLanguage;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/language/MucangLanguage;->$VALUES:[Lcn/mucang/android/language/MucangLanguage;

    invoke-virtual {v0}, [Lcn/mucang/android/language/MucangLanguage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/language/MucangLanguage;

    return-object v0
.end method


# virtual methods
.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/language/MucangLanguage;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/language/MucangLanguage;->language:Ljava/lang/String;

    return-object v0
.end method
