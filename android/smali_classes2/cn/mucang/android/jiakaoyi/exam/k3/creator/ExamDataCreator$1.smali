.class final Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->getConfigs(JLjava/lang/String;Ljava/util/Map;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;)I
    .locals 0

    .line 2
    iget p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->position:I

    iget p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->position:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator$1;->compare(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;)I

    move-result p1

    return p1
.end method
