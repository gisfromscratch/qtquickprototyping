#include <QtTest>

// add necessary includes here

class QtTesting : public QObject
{
    Q_OBJECT

public:
    QtTesting();
    ~QtTesting();

private slots:
    void test_case1();

};

QtTesting::QtTesting()
{

}

QtTesting::~QtTesting()
{

}

void QtTesting::test_case1()
{
    throw 42;
}

QTEST_APPLESS_MAIN(QtTesting)

#include "tst_qttesting.moc"
