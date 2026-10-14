.class public final Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J1\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u0001H\u0007\u00a2\u0006\u0002\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel$Companion;",
        "",
        "()V",
        "createModel",
        "Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;",
        "code",
        "",
        "step",
        "time",
        "",
        "extra",
        "(ILjava/lang/Integer;FLjava/lang/Object;)Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Integer;FLjava/lang/Object;)Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->setC(I)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->setS(I)V

    .line 4
    invoke-virtual {v0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->setT(F)V

    if-nez p4, :cond_1

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->setExt(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_1
    instance-of p1, p4, Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 7
    check-cast p4, Ljava/lang/String;

    invoke-virtual {v0, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->setExt(Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-static {p4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;->setExt(Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method
