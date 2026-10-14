.class public final enum Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DialogGrade"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;

.field public static final enum High:Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;

.field public static final enum Low:Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;

.field public static final enum Middle:Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;


# instance fields
.field public final grade:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;

    const-string v1, "Low"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;->Low:Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;

    .line 2
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;

    const-string v4, "Middle"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;->Middle:Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;

    .line 3
    new-instance v4, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;

    const-string v6, "High"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;->High:Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;

    new-array v6, v7, [Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    .line 4
    sput-object v6, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;->$VALUES:[Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;->grade:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;

    return-object p0
.end method

.method public static values()[Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;->$VALUES:[Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;

    invoke-virtual {v0}, [Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;

    return-object v0
.end method
