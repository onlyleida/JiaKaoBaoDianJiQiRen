.class public final enum Lcn/mucang/sundial/library/sign/EncryptAlgorithm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/sundial/library/sign/EncryptAlgorithm;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\t\u0010\nR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0006j\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcn/mucang/sundial/library/sign/EncryptAlgorithm;",
        "",
        "",
        "label",
        "Ljava/lang/String;",
        "getLabel",
        "()Ljava/lang/String;",
        "value",
        "getValue",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V",
        "E1",
        "E2",
        "E3",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/sundial/library/sign/EncryptAlgorithm;

.field public static final enum E1:Lcn/mucang/sundial/library/sign/EncryptAlgorithm;

.field public static final enum E2:Lcn/mucang/sundial/library/sign/EncryptAlgorithm;

.field public static final enum E3:Lcn/mucang/sundial/library/sign/EncryptAlgorithm;


# instance fields
.field private final label:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/mucang/sundial/library/sign/EncryptAlgorithm;

    new-instance v1, Lcn/mucang/sundial/library/sign/EncryptAlgorithm;

    const-string v2, "E1"

    const/4 v3, 0x0

    const-string v4, "e1"

    const-string v5, "SHA1"

    .line 1
    invoke-direct {v1, v2, v3, v4, v5}, Lcn/mucang/sundial/library/sign/EncryptAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcn/mucang/sundial/library/sign/EncryptAlgorithm;->E1:Lcn/mucang/sundial/library/sign/EncryptAlgorithm;

    aput-object v1, v0, v3

    new-instance v1, Lcn/mucang/sundial/library/sign/EncryptAlgorithm;

    const-string v2, "E2"

    const/4 v3, 0x1

    const-string v4, "e2"

    const-string v5, "SHA256"

    .line 2
    invoke-direct {v1, v2, v3, v4, v5}, Lcn/mucang/sundial/library/sign/EncryptAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcn/mucang/sundial/library/sign/EncryptAlgorithm;->E2:Lcn/mucang/sundial/library/sign/EncryptAlgorithm;

    aput-object v1, v0, v3

    new-instance v1, Lcn/mucang/sundial/library/sign/EncryptAlgorithm;

    const-string v2, "E3"

    const/4 v3, 0x2

    const-string v4, "e3"

    const-string v5, "SHA512"

    .line 3
    invoke-direct {v1, v2, v3, v4, v5}, Lcn/mucang/sundial/library/sign/EncryptAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcn/mucang/sundial/library/sign/EncryptAlgorithm;->E3:Lcn/mucang/sundial/library/sign/EncryptAlgorithm;

    aput-object v1, v0, v3

    sput-object v0, Lcn/mucang/sundial/library/sign/EncryptAlgorithm;->$VALUES:[Lcn/mucang/sundial/library/sign/EncryptAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcn/mucang/sundial/library/sign/EncryptAlgorithm;->label:Ljava/lang/String;

    iput-object p4, p0, Lcn/mucang/sundial/library/sign/EncryptAlgorithm;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/sundial/library/sign/EncryptAlgorithm;
    .locals 1

    const-class v0, Lcn/mucang/sundial/library/sign/EncryptAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/sundial/library/sign/EncryptAlgorithm;

    return-object p0
.end method

.method public static values()[Lcn/mucang/sundial/library/sign/EncryptAlgorithm;
    .locals 1

    sget-object v0, Lcn/mucang/sundial/library/sign/EncryptAlgorithm;->$VALUES:[Lcn/mucang/sundial/library/sign/EncryptAlgorithm;

    invoke-virtual {v0}, [Lcn/mucang/sundial/library/sign/EncryptAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/sundial/library/sign/EncryptAlgorithm;

    return-object v0
.end method


# virtual methods
.method public final getLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/sign/EncryptAlgorithm;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/sign/EncryptAlgorithm;->value:Ljava/lang/String;

    return-object v0
.end method
