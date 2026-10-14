.class public Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final Failure:B = 0x2t

.field public static final None:B = 0x0t

.field public static final Success:B = 0x1t

.field private static tid:I = 0x1


# instance fields
.field public data1:I

.field public data2:I

.field public desc:Ljava/lang/String;

.field public id:I

.field public final transient normal:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

.field public transient pos:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public final transient teach:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

.field public triggerState:B

.field public type:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;ILcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->pos:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->type:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    .line 4
    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->data1:I

    .line 5
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->teach:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 6
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->normal:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    const/4 p1, 0x0

    .line 7
    iput-byte p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    .line 8
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->tid:I

    add-int/lit8 p2, p1, 0x1

    sput p2, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->tid:I

    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->id:I

    return-void
.end method


# virtual methods
.method public isSame(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->type:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->type:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->data1:I

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->data1:I

    if-ne v0, v1, :cond_0

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->data2:I

    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->data2:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->type:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->data1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->data2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", desc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", triggerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
