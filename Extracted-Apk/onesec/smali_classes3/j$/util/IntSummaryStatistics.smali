.class public final Lj$/util/IntSummaryStatistics;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/function/IntConsumer;


# instance fields
.field private count:J

.field private max:I

.field private min:I

.field private sum:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lj$/util/IntSummaryStatistics;->min:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lj$/util/IntSummaryStatistics;->max:I

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 4

    iget-wide v0, p0, Lj$/util/IntSummaryStatistics;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj$/util/IntSummaryStatistics;->count:J

    iget-wide v0, p0, Lj$/util/IntSummaryStatistics;->sum:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj$/util/IntSummaryStatistics;->sum:J

    iget v0, p0, Lj$/util/IntSummaryStatistics;->min:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lj$/util/IntSummaryStatistics;->min:I

    iget v0, p0, Lj$/util/IntSummaryStatistics;->max:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lj$/util/IntSummaryStatistics;->max:I

    return-void
.end method

.method public final andThen(Lj$/util/function/IntConsumer;)Lj$/util/function/IntConsumer;
    .locals 1

    .line 0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    new-instance v0, Lj$/util/function/IntConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lj$/util/function/IntConsumer$$ExternalSyntheticLambda0;-><init>(Lj$/util/function/IntConsumer;Lj$/util/function/IntConsumer;)V

    return-object v0
.end method

.method public final combine(Lj$/util/IntSummaryStatistics;)V
    .locals 4

    iget-wide v0, p0, Lj$/util/IntSummaryStatistics;->count:J

    iget-wide v2, p1, Lj$/util/IntSummaryStatistics;->count:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj$/util/IntSummaryStatistics;->count:J

    iget-wide v0, p0, Lj$/util/IntSummaryStatistics;->sum:J

    iget-wide v2, p1, Lj$/util/IntSummaryStatistics;->sum:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj$/util/IntSummaryStatistics;->sum:J

    iget v0, p0, Lj$/util/IntSummaryStatistics;->min:I

    iget v1, p1, Lj$/util/IntSummaryStatistics;->min:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lj$/util/IntSummaryStatistics;->min:I

    iget v0, p0, Lj$/util/IntSummaryStatistics;->max:I

    iget p1, p1, Lj$/util/IntSummaryStatistics;->max:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lj$/util/IntSummaryStatistics;->max:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lj$/util/IntSummaryStatistics;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 0
    iget-wide v1, p0, Lj$/util/IntSummaryStatistics;->count:J

    .line 0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    .line 0
    iget-wide v2, p0, Lj$/util/IntSummaryStatistics;->sum:J

    .line 0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 0
    iget v2, p0, Lj$/util/IntSummaryStatistics;->min:I

    .line 0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 0
    iget-wide v2, p0, Lj$/util/IntSummaryStatistics;->count:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 0
    iget-wide v4, p0, Lj$/util/IntSummaryStatistics;->sum:J

    long-to-double v4, v4

    long-to-double v2, v2

    div-double/2addr v4, v2

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    .line 0
    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 0
    iget v2, p0, Lj$/util/IntSummaryStatistics;->max:I

    .line 0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%s{count=%d, sum=%d, min=%d, average=%f, max=%d}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
