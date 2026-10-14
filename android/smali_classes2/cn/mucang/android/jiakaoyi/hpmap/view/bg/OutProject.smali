.class public final enum Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;

.field public static final enum Black:Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;

.field public static final enum Gray:Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;

.field public static final enum GrayCement:Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;

.field public static final enum Lawn:Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;


# instance fields
.field public final color:I

.field public final type:I

.field public final typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v6, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;

    sget v5, Lcn/mucang/android/jiakaoyi/hpmap/R$color;->map_bg_black:I

    const-string v1, "Black"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "\u6df1\u8272"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v6, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;->Black:Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;

    sget v12, Lcn/mucang/android/jiakaoyi/hpmap/R$color;->map_bg_gray:I

    const-string v8, "Gray"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const-string v11, "\u7070\u8272"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;->Gray:Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;

    sget v18, Lcn/mucang/android/jiakaoyi/hpmap/R$color;->out_project_lawn:I

    const-string v14, "Lawn"

    const/4 v15, 0x2

    const/16 v16, 0x2

    const-string v17, "\u7eff\u8349\u576a"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;->Lawn:Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;

    .line 4
    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;

    sget v12, Lcn/mucang/android/jiakaoyi/hpmap/R$color;->out_project_grayCement:I

    const-string v8, "GrayCement"

    const/4 v9, 0x3

    const/4 v10, 0x3

    const-string v11, "\u7070\u8272\u6c34\u6ce5\u5730"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v2, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;->GrayCement:Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;

    const/4 v3, 0x4

    new-array v3, v3, [Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const/4 v0, 0x3

    aput-object v2, v3, v0

    .line 5
    sput-object v3, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;->$VALUES:[Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;->type:I

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;->typeName:Ljava/lang/String;

    .line 4
    iput p5, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;->color:I

    return-void
.end method

.method public static parse(I)Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;->values()[Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;->type:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;->Black:Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;->$VALUES:[Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;

    return-object v0
.end method
