.class public Lcn/mucang/sundial/android/log/LogType;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Com:Lcn/mucang/sundial/android/log/LogType;

.field public static final GPS:Lcn/mucang/sundial/android/log/LogType;

.field public static final Normal:Lcn/mucang/sundial/android/log/LogType;


# instance fields
.field public final dirName:Ljava/lang/String;

.field public final interval:I

.field public final realTimeUpload:Z

.field public final size:I

.field public final suffix:Ljava/lang/String;

.field public final totalSize:I

.field public final type:I

.field public final typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v9, Lcn/mucang/sundial/android/log/LogType;

    const/4 v1, 0x1

    const-string v2, "\u901a\u7528"

    const-string v3, "normal"

    const-string v4, "txt"

    const v5, 0x493e0

    const/high16 v6, 0x200000

    const/high16 v7, 0xa00000

    const/4 v8, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcn/mucang/sundial/android/log/LogType;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    sput-object v9, Lcn/mucang/sundial/android/log/LogType;->Normal:Lcn/mucang/sundial/android/log/LogType;

    .line 2
    new-instance v0, Lcn/mucang/sundial/android/log/LogType;

    const/4 v11, 0x2

    const-string v12, "\u901a\u4fe1\u8fde\u63a5"

    const-string v13, "com"

    const-string v14, "txt"

    const v15, 0x927c0

    const/high16 v16, 0x200000

    const/high16 v17, 0xa00000

    const/16 v18, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcn/mucang/sundial/android/log/LogType;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    sput-object v0, Lcn/mucang/sundial/android/log/LogType;->Com:Lcn/mucang/sundial/android/log/LogType;

    .line 3
    new-instance v0, Lcn/mucang/sundial/android/log/LogType;

    const/4 v2, 0x3

    const-string v3, "\u5b9a\u4f4d"

    const-string v4, "gps"

    const-string v5, "txt"

    const v6, 0x927c0

    const/high16 v7, 0x200000

    const/high16 v8, 0x1e00000

    const/4 v9, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcn/mucang/sundial/android/log/LogType;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    sput-object v0, Lcn/mucang/sundial/android/log/LogType;->GPS:Lcn/mucang/sundial/android/log/LogType;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcn/mucang/sundial/android/log/LogType;->typeName:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcn/mucang/sundial/android/log/LogType;->dirName:Ljava/lang/String;

    .line 4
    iput p5, p0, Lcn/mucang/sundial/android/log/LogType;->interval:I

    .line 5
    iput p6, p0, Lcn/mucang/sundial/android/log/LogType;->size:I

    .line 6
    iput p1, p0, Lcn/mucang/sundial/android/log/LogType;->type:I

    .line 7
    iput p7, p0, Lcn/mucang/sundial/android/log/LogType;->totalSize:I

    .line 8
    iput-object p4, p0, Lcn/mucang/sundial/android/log/LogType;->suffix:Ljava/lang/String;

    .line 9
    iput-boolean p8, p0, Lcn/mucang/sundial/android/log/LogType;->realTimeUpload:Z

    return-void
.end method

.method public static values()[Lcn/mucang/sundial/android/log/LogType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/mucang/sundial/android/log/LogType;

    .line 1
    sget-object v1, Lcn/mucang/sundial/android/log/LogType;->Normal:Lcn/mucang/sundial/android/log/LogType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/sundial/android/log/LogType;->Com:Lcn/mucang/sundial/android/log/LogType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/sundial/android/log/LogType;->GPS:Lcn/mucang/sundial/android/log/LogType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public dir(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcn/mucang/sundial/android/log/LogType;->dirName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
