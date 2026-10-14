.class public final enum Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;

.field public static final enum Bumper:Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;

.field public static final enum None:Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;


# instance fields
.field public final colors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final type:I

.field public final typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v6, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;

    const-string v1, "None"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/util/List;)V

    sput-object v6, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;->None:Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;

    const v1, -0x532da

    const v2, -0xaaaaab

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;->get(II)Ljava/util/List;

    move-result-object v12

    const-string v8, "Bumper"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const-string v11, "\u9632\u649e\u6746"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;->Bumper:Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;

    const/4 v1, 0x2

    new-array v1, v1, [Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;

    const/4 v2, 0x0

    aput-object v6, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 3
    sput-object v1, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;->$VALUES:[Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;->type:I

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;->typeName:Ljava/lang/String;

    .line 4
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;->colors:Ljava/util/List;

    return-void
.end method

.method private static get(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static parse(I)Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;->values()[Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;->type:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;->None:Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;->$VALUES:[Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;

    return-object v0
.end method
