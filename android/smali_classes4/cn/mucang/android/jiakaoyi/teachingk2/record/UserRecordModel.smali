.class public final Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\t\u0018\u0000 !2\u00020\u0001:\u0001!B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0006\"\u0004\u0008 \u0010\u0008\u00a8\u0006\""
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;",
        "Ljava/io/Serializable;",
        "()V",
        "c",
        "",
        "getC",
        "()I",
        "setC",
        "(I)V",
        "ext",
        "",
        "getExt",
        "()Ljava/lang/String;",
        "setExt",
        "(Ljava/lang/String;)V",
        "extra",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;",
        "getExtra",
        "()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;",
        "setExtra",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;)V",
        "s",
        "getS",
        "setS",
        "t",
        "",
        "getT",
        "()F",
        "setT",
        "(F)V",
        "tp",
        "getTp",
        "setTp",
        "Companion",
        "teachbase_release"
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
.field public static final Companion:Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel$a;


# instance fields
.field private c:I

.field private ext:Ljava/lang/String;

.field private transient extra:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;

.field private s:I

.field private t:F

.field private tp:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordType;->Behavior:Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordType;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/record/RecordType;->typeId:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->tp:I

    return-void
.end method

.method public static final createModel(ILjava/lang/Integer;FLjava/lang/Object;)Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel$a;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel$a;->a(ILjava/lang/Integer;FLjava/lang/Object;)Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getC()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->c:I

    return v0
.end method

.method public final getExt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtra()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->extra:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;

    return-object v0
.end method

.method public final getS()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->s:I

    return v0
.end method

.method public final getT()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->t:F

    return v0
.end method

.method public final getTp()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->tp:I

    return v0
.end method

.method public final setC(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->c:I

    return-void
.end method

.method public final setExt(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->ext:Ljava/lang/String;

    return-void
.end method

.method public final setExtra(Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->extra:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;

    return-void
.end method

.method public final setS(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->s:I

    return-void
.end method

.method public final setT(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->t:F

    return-void
.end method

.method public final setTp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->tp:I

    return-void
.end method
