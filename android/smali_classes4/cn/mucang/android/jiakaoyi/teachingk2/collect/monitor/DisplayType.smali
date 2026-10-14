.class public final enum Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0086\u0001\u0018\u0000 \u000f2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000fB\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;",
        "",
        "value",
        "",
        "label",
        "",
        "(Ljava/lang/String;IILjava/lang/String;)V",
        "getLabel",
        "()Ljava/lang/String;",
        "getValue",
        "()I",
        "Circle",
        "Arrow",
        "Flat",
        "Cone",
        "Companion",
        "TeachingK2_release"
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
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;

.field public static final enum Arrow:Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;

.field public static final enum Circle:Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;

.field public static final Companion:Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType$a;

.field public static final enum Cone:Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;

.field public static final enum Flat:Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;


# instance fields
.field private final label:Ljava/lang/String;

.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;->Circle:Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;->Arrow:Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;->Flat:Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;->Cone:Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;

    const-string v1, "Circle"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "\u5706\u70b9"

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;->Circle:Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;

    const-string v1, "Arrow"

    const/4 v2, 0x2

    const-string v4, "\u7bad\u5934"

    invoke-direct {v0, v1, v3, v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;->Arrow:Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;

    const-string v1, "Flat"

    const/4 v3, 0x3

    const-string v4, "\u5e73\u9762"

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;->Flat:Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;

    const-string v1, "Cone"

    const/4 v2, 0x4

    const-string v4, "\u9525\u5f62"

    invoke-direct {v0, v1, v3, v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;->Cone:Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;->$values()[Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType$a;

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

    iput p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;->value:I

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;->label:Ljava/lang/String;

    return-void
.end method

.method public static final getType(I)Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType$a;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType$a;->a(I)Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;
    .locals 1

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;

    return-object v0
.end method


# virtual methods
.method public final getLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/DisplayType;->value:I

    return v0
.end method
