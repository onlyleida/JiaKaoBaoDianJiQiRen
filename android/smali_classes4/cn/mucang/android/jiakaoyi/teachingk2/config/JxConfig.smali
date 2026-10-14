.class public final enum Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfig;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfig;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\tj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfig;",
        "",
        "code",
        "",
        "desc",
        "default",
        "",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V",
        "getCode",
        "()Ljava/lang/String;",
        "getDefault",
        "()Ljava/lang/Object;",
        "getDesc",
        "ShowMissBrake",
        "teachbase_release"
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
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfig;

.field public static final enum ShowMissBrake:Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfig;


# instance fields
.field private final code:Ljava/lang/String;

.field private final default:Ljava/lang/Object;

.field private final desc:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfig;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfig;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfig;->ShowMissBrake:Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfig;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfig;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "ShowMissBrake"

    const/4 v2, 0x0

    const-string v3, "JX20009"

    const-string v4, "\u662f\u5426\u5c55\u793a\u8bef\u6740\u4e0a\u62a5\u6309\u94ae"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfig;->ShowMissBrake:Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfig;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfig;->$values()[Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfig;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfig;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfig;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfig;->code:Ljava/lang/String;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfig;->desc:Ljava/lang/String;

    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfig;->default:Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfig;
    .locals 1

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfig;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfig;
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfig;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfig;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfig;

    return-object v0
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfig;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final getDefault()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfig;->default:Ljava/lang/Object;

    return-object v0
.end method

.method public final getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfig;->desc:Ljava/lang/String;

    return-object v0
.end method
