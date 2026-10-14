.class public final enum Lcn/mucang/android/jiakaoyi/framework/language/Language;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/framework/language/Language$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/framework/language/Language;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u0000 \r2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\rB\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/framework/language/Language;",
        "",
        "type",
        "",
        "languageName",
        "",
        "(Ljava/lang/String;IILjava/lang/String;)V",
        "getLanguageName",
        "()Ljava/lang/String;",
        "getType",
        "()I",
        "Chinese",
        "Uighur",
        "Companion",
        "framework_release"
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
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/framework/language/Language;

.field public static final enum Chinese:Lcn/mucang/android/jiakaoyi/framework/language/Language;

.field public static final Companion:Lcn/mucang/android/jiakaoyi/framework/language/Language$a;

.field public static final enum Uighur:Lcn/mucang/android/jiakaoyi/framework/language/Language;


# instance fields
.field private final languageName:Ljava/lang/String;

.field private final type:I


# direct methods
.method private static final synthetic $values()[Lcn/mucang/android/jiakaoyi/framework/language/Language;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/framework/language/Language;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/language/Language;->Chinese:Lcn/mucang/android/jiakaoyi/framework/language/Language;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/language/Language;->Uighur:Lcn/mucang/android/jiakaoyi/framework/language/Language;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/language/Language;

    const-string v1, "Chinese"

    const/4 v2, 0x0

    const-string v3, "\u6c49\u8bed"

    invoke-direct {v0, v1, v2, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/language/Language;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/language/Language;->Chinese:Lcn/mucang/android/jiakaoyi/framework/language/Language;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/language/Language;

    const-string v1, "Uighur"

    const/4 v2, 0x1

    const-string v3, "\u7ef4\u543e\u5c14\u8bed"

    invoke-direct {v0, v1, v2, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/language/Language;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/language/Language;->Uighur:Lcn/mucang/android/jiakaoyi/framework/language/Language;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/language/Language;->$values()[Lcn/mucang/android/jiakaoyi/framework/language/Language;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/language/Language;->$VALUES:[Lcn/mucang/android/jiakaoyi/framework/language/Language;

    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/language/Language$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/language/Language$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/language/Language;->Companion:Lcn/mucang/android/jiakaoyi/framework/language/Language$a;

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

    iput p3, p0, Lcn/mucang/android/jiakaoyi/framework/language/Language;->type:I

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/framework/language/Language;->languageName:Ljava/lang/String;

    return-void
.end method

.method public static final parseLanguage(I)Lcn/mucang/android/jiakaoyi/framework/language/Language;
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/language/Language;->Companion:Lcn/mucang/android/jiakaoyi/framework/language/Language$a;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/language/Language$a;->a(I)Lcn/mucang/android/jiakaoyi/framework/language/Language;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/language/Language;
    .locals 1

    const-class v0, Lcn/mucang/android/jiakaoyi/framework/language/Language;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/framework/language/Language;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/framework/language/Language;
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/language/Language;->$VALUES:[Lcn/mucang/android/jiakaoyi/framework/language/Language;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/framework/language/Language;

    return-object v0
.end method


# virtual methods
.method public final getLanguageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/language/Language;->languageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/framework/language/Language;->type:I

    return v0
.end method
