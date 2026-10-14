.class public final enum Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

.field public static final enum Between:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

.field public static final enum BigThan:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

.field public static final enum Equal:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

.field public static final enum NotEqual:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

.field public static final enum OutOfRange:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

.field public static final enum SmallThan:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;


# instance fields
.field public final relationName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    const-string v1, "BigThan"

    const/4 v2, 0x0

    const-string v3, "\u5927\u4e8e"

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->BigThan:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    const-string v3, "Equal"

    const/4 v4, 0x1

    const-string v5, "\u7b49\u4e8e"

    invoke-direct {v1, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->Equal:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    .line 3
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    const-string v5, "NotEqual"

    const/4 v6, 0x2

    const-string v7, "\u4e0d\u7b49\u4e8e"

    invoke-direct {v3, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->NotEqual:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    .line 4
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    const-string v7, "SmallThan"

    const/4 v8, 0x3

    const-string v9, "\u5c0f\u4e8e"

    invoke-direct {v5, v7, v8, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->SmallThan:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    .line 5
    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    const-string v9, "Between"

    const/4 v10, 0x4

    const-string v11, "\u8303\u56f4\u5185"

    invoke-direct {v7, v9, v10, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->Between:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    .line 6
    new-instance v9, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    const-string v11, "OutOfRange"

    const/4 v12, 0x5

    const-string v13, "\u8303\u56f4\u5916"

    invoke-direct {v9, v11, v12, v13}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->OutOfRange:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    const/4 v11, 0x6

    new-array v11, v11, [Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->relationName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    return-object v0
.end method
