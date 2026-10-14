.class public final enum Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

.field public static final enum All:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

.field public static final enum Left:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

.field public static final enum Right:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;


# instance fields
.field public final type:I

.field public final typeName:Ljava/lang/String;

.field public final zhTypeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teakingk2_normal_daoku:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "All"

    const/4 v2, 0x0

    const-string v4, "\u6b63\u5e38\u5012\u5e93"

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->All:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_zuodaoku:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v10

    const-string v8, "Left"

    const/4 v9, 0x1

    const-string v11, "\u5de6\u5012\u5e93"

    const/4 v12, 0x2

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->Left:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_youdaoku:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v16

    const-string v14, "Right"

    const/4 v15, 0x2

    const-string v17, "\u53f3\u5012\u5e93"

    const/16 v18, 0x3

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->Right:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    const/4 v2, 0x3

    new-array v2, v2, [Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    .line 4
    sput-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->typeName:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->zhTypeName:Ljava/lang/String;

    .line 4
    iput p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->type:I

    return-void
.end method

.method public static getByType(I)Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->Left:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->type:I

    if-ne p0, v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->Right:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->type:I

    if-ne p0, v1, :cond_1

    return-object v0

    .line 3
    :cond_1
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->All:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    return-object p0
.end method

.method public static typeList()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->values()[Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 3
    iget v5, v4, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->type:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->typeName:Ljava/lang/String;

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    return-object v0
.end method
