.class public final enum Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/android/db/entity/StudentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;

.field public static final enum INIT:Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;

.field public static final enum LOGIN:Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;->INIT:Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;

    .line 2
    new-instance v1, Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;

    const-string v3, "LOGIN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;->LOGIN:Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;

    const/4 v3, 0x2

    new-array v3, v3, [Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;->$VALUES:[Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;

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
    iput p3, p0, Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;->value:I

    return-void
.end method

.method static from(I)Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;->values()[Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u975e\u6cd5\u7684\u7ed3\u679c\u503c:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;

    return-object p0
.end method

.method public static values()[Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;->$VALUES:[Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;

    invoke-virtual {v0}, [Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;->value:I

    return v0
.end method
