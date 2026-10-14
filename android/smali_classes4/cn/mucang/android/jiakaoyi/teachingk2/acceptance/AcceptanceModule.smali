.class public final enum Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0010\u0008\u0086\u0001\u0018\u0000 \u00152\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0015B\'\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\tR\u0011\u0010\u0008\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0007\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\"\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;",
        "",
        "Ljava/io/Serializable;",
        "title",
        "",
        "type",
        "",
        "tip",
        "desc",
        "(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V",
        "getDesc",
        "()Ljava/lang/String;",
        "getTip",
        "setTip",
        "(Ljava/lang/String;)V",
        "getTitle",
        "getType",
        "()I",
        "K2Teach",
        "Precision",
        "Circle",
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
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;

.field public static final enum Circle:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;

.field public static final Companion:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule$a;

.field public static final enum K2Teach:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;

.field public static final enum Precision:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;


# instance fields
.field private final desc:Ljava/lang/String;

.field private tip:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final type:I


# direct methods
.method private static final synthetic $values()[Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;->K2Teach:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;->Precision:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;->Circle:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;

    const-string v1, "K2Teach"

    const/4 v2, 0x0

    const-string v3, "\u79d1\u76ee\u4e8c\u6559\u5b66\u9a8c\u6536"

    const/4 v4, 0x1

    const-string v5, "\u63d0\u793a\uff1a\u8bf7\u4f9d\u6b21\u9009\u62e9\u6240\u6709\u6559\u5b66\u65b9\u6848\uff0c\u5b8c\u6210\u79d1\u76ee\u4e8c\u6559\u5b66\u9a8c\u6536"

    const-string v6, "\u6559\u5b66\u65b9\u6848\u9009\u62e9\uff1a"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;->K2Teach:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;

    const-string v9, "Precision"

    const/4 v10, 0x1

    const-string v11, "\u7cbe\u5ea6\u9a8c\u6536"

    const/4 v12, 0x2

    const-string v13, "\u63d0\u793a\uff1a\u4e0a\u5761\u8d77\u6b65\u9879\u76ee\uff0c\u4e0a\u5761\u505c\u8f66\u540e\uff0c\u6d4b\u91cf\u53f3\u524d\u8f6e\u4e0e\u8fb9\u7ebf\u8ddd\u79bb\u3002\n\u5012\u8f66\u5165\u5e93\u9879\u76ee\uff0c\u5165\u5e93\u505c\u8f66\u540e\uff0c\u6d4b\u91cf\u53f3\u524d\u8f6e\u4e0e\u8fb9\u7ebf\u8ddd\u79bb\u3002"

    const-string v14, "\u7cbe\u5ea6\u9a8c\u6536\u9009\u62e9\uff1a"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;->Precision:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;

    const-string v2, "Circle"

    const/4 v3, 0x2

    const-string v4, "\u8dd1\u5708\u9a8c\u6536"

    const/4 v5, 0x3

    const-string v6, "\u63d0\u793a\uff1a\u8bf7\u4f9d\u6b21\u9009\u62e9\u6240\u6709\u5708\u6b21\uff0c\u5b8c\u6210\u8dd1\u5708\u9a8c\u6536"

    const-string v7, "\u5708\u6b21\u9009\u62e9\uff1a"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;->Circle:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;->$values()[Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;->title:Ljava/lang/String;

    iput p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;->type:I

    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;->tip:Ljava/lang/String;

    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;
    .locals 1

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;

    return-object v0
.end method


# virtual methods
.method public final getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public final getTip()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;->tip:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;->type:I

    return v0
.end method

.method public final setTip(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;->tip:Ljava/lang/String;

    return-void
.end method
