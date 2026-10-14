.class public Lcn/mucang/android/jiakaoyi/exam/k3/light/LightOrderStandard;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public configId:I

.field public deductId:I

.field public desc:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public lights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Light;",
            ">;"
        }
    .end annotation
.end field

.field public notAllowed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Light;",
            ">;"
        }
    .end annotation
.end field

.field public standard:Ljava/lang/String;

.field public tag:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
