.class public final enum Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;

.field public static final enum Cement:Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;

.field public static final enum GrayCement:Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;

.field public static final enum None:Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;

.field public static final enum Tar:Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;


# instance fields
.field public final color:I

.field public final type:I

.field public final typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v6, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;

    sget v5, Lcn/mucang/android/jiakaoyi/hpmap/R$color;->map_normal_bg:I

    const-string v1, "None"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v6, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;->None:Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;

    sget v12, Lcn/mucang/android/jiakaoyi/hpmap/R$color;->in_project_cement:I

    const-string v8, "Cement"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const-string v11, "\u6df1\u8272\u6c34\u6ce5\u5730"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;->Cement:Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;

    sget v18, Lcn/mucang/android/jiakaoyi/hpmap/R$color;->in_project_tar:I

    const-string v14, "Tar"

    const/4 v15, 0x2

    const/16 v16, 0x2

    const-string v17, "\u67cf\u6cb9\u5730"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;->Tar:Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;

    .line 4
    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;

    sget v12, Lcn/mucang/android/jiakaoyi/hpmap/R$color;->out_project_grayCement:I

    const-string v8, "GrayCement"

    const/4 v9, 0x3

    const/4 v10, 0x3

    const-string v11, "\u7070\u8272\u6c34\u6ce5\u5730"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v2, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;->GrayCement:Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;

    const/4 v3, 0x4

    new-array v3, v3, [Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const/4 v0, 0x3

    aput-object v2, v3, v0

    .line 5
    sput-object v3, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;->$VALUES:[Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;

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
    iput p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;->type:I

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;->typeName:Ljava/lang/String;

    .line 4
    iput p5, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;->color:I

    return-void
.end method

.method public static parse(I)Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;->values()[Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;->type:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;->None:Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;->$VALUES:[Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;

    return-object v0
.end method
